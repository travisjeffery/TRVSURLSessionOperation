//
//  Tests.m
//  Tests
//
//  Created by Travis Jeffery on 4/17/14.
//
//

#import <XCTest/XCTest.h>
#import "TRVSURLSessionOperation.h"

@interface Tests : XCTestCase

@property (nonatomic, strong) NSOperationQueue *queue;
@property (nonatomic, strong) NSURLSession *session;

@end

@implementation Tests

- (void)setUp {
    [super setUp];

    _queue = [[NSOperationQueue alloc] init];
    _queue.maxConcurrentOperationCount = 1;
    _session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration ephemeralSessionConfiguration]];
}

- (void)test {
    NSArray *urls = @[ [NSURL URLWithString:@"https://twitter.com/travisjeffery"], [NSURL URLWithString:@"https://github.com/travisjeffery"] ];
    NSMutableArray *result = [[NSMutableArray alloc] init];

    [_queue addOperation:[[TRVSURLSessionOperation alloc] initWithSession:_session request:[NSURLRequest requestWithURL:urls[0]] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        XCTAssert(result.count == 0);
        [result addObject:response.URL];
    }]];

    [_queue addOperation:[[TRVSURLSessionOperation alloc] initWithSession:_session URL:urls[1] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        [result addObject:response.URL];
    }]];

    [_queue waitUntilAllOperationsAreFinished];

    XCTAssertEqualObjects(urls, result);
}

@end
