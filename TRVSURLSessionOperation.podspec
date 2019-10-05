Pod::Spec.new do |s|
  s.name                  = "TRVSURLSessionOperation"
  s.version               = "0.0.1"
  s.summary               = "NSURLSession and NSOperationQueue working together."
  s.description           = <<-DESC
                  `TRVSURLSessionOperation` is an `NSOperation` subclass that wraps `NSURLSessionTask` so that `NSURLSession` works with `NSOperationQueue`.
                   DESC
  s.homepage              = "https://github.com/travisjeffery/TRVSURLSessionOperation"
  s.license               = "MIT"
  s.author                = { "Travis Jeffery" => "tj@travisjeffery.com" }
  s.social_media_url      = 'https://twitter.com/travisjeffery'
  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.9'
  s.tvos.deployment_target= '9.0'
  s.source                = { :git => "https://github.com/travisjeffery/TRVSURLSessionOperation.git", :tag => "0.0.1" }
  s.source_files          = "TRVSURLSessionOperation", "TRVSURLSessionOperation/**/*.{h,m}"
  s.requires_arc          = true
end
