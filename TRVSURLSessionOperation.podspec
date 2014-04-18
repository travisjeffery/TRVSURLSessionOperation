Pod::Spec.new do |s|
  s.name         = "TRVSURLSessionOperation"
  s.version      = "0.0.1"
  s.summary      = "An `NSOperation` subclass that wraps `NSURLSessionTask` to use with `NSOperationQueue`."

  s.description  = <<-DESC
                  `TRVSURLSessionOperation` is an `NSOperation` subclass that wraps `NSURLSessionTask` so you can use them in a `NSOperationQueue`.
                   DESC

  s.homepage     = "https://github.com/travisjeffery/TRVSURLSessionOperation"

  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Travis Jeffery" => "tj@travisjeffery.com" }

  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/travisjeffery/TRVSURLSessionOperation.git", :tag => "0.0.1" }

  s.source_files  = "TRVSURLSessionOperation", "TRVSURLSessionOperation/**/*.{h,m}"

  s.requires_arc = true
end
