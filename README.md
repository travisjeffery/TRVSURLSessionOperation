# TRVSURLSessionOperation

By [@travisjeffery](http://twitter.com/travisjeffery).

`TRVSURLSessionOperation` is an `NSOperation` subclass that wraps `NSURLSessionTask` so you can use them in a `NSOperationQueue`.

With this you can:

- schedule network requests (i.e. run request A then request B, and give requests priority)
- limit the number of concurrent network requests (e.g. have 5 network requests running at any given time)
- control these network operations the same as other `NSOperation` objects (e.g. you have an `NSOperation` that creates an image, then an `TRVSURLSessionOperation` that uploads that image to a web service)