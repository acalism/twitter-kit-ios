Pod::Spec.new do |s|
  s.name = "TwitterTestFoundation"
  s.version = "0.1"
  s.summary = "Test Kit for Twitter"
  s.homepage = "https://github.com/twitter/twitter-kit-ios"
  s.documentation_url = "https://github.com/twitter/twitter-kit-ios/wiki"
  s.social_media_url = "https://twitter.com/TwitterDev"
  s.authors = "Twitter"
  s.platform = :ios, "9.0"
  s.source = { :git => "git@gitlab.alibaba-inc.com:Youpik-iOS/twitter-sdk.git", :tag => s.version }
  s.license = { :type => "Commercial", :text => "Twitter Kit: Copyright Twitter, Inc. All Rights Reserved. Use of this software is subject to the terms and conditions of the Twitter Kit Agreement located at https://dev.twitter.com/overview/terms/twitterkit and the Developer Agreement located at https://dev.twitter.com/overview/terms/agreement. OSS: https://github.com/twitter/twitter-kit-ios/blob/master/OS_LICENSES.md"}

  s.source_files = "#{s.name}/{Base,URLMocking}/**/*.{h,m}"
  
  s.dependency 'TUDelorean'
end
