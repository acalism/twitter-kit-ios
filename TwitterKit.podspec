Pod::Spec.new do |s|
  s.name = "TwitterKit"
  s.version = "3.4.3"
  s.summary = "Increase user engagement and app growth. https://github.com/twitter/twitter-kit-ios"
  s.homepage = "https://code.aone.alibaba-inc.com/Youpik-iOS/twitter-sdk"
  s.documentation_url = "https://github.com/twitter/twitter-kit-ios/wiki"
  s.social_media_url = "https://twitter.com/TwitterDev"
  s.authors = "Twitter"
  s.platform = :ios, "9.0"
  s.source = { :git => "git@gitlab.alibaba-inc.com:Youpik-iOS/twitter-sdk.git", :tag => s.version }
  #s.vendored_frameworks = "iOS/TwitterKit.framework"
  s.license = { :type => "Commercial", :text => "Twitter Kit: Copyright Twitter, Inc. All Rights Reserved. Use of this software is subject to the terms and conditions of the Twitter Kit Agreement located at https://dev.twitter.com/overview/terms/twitterkit and the Developer Agreement located at https://dev.twitter.com/overview/terms/agreement. OSS: https://github.com/twitter/twitter-kit-ios/blob/master/OS_LICENSES.md"}

  #s.resources = ["iOS/TwitterKit.framework/TwitterKitResources.bundle", "iOS/TwitterKit.framework/TwitterShareExtensionUIResources.bundle"]
  s.resources = "#{s.name}/TwitterKitResources.bundle"
  s.source_files = "#{s.name}/#{s.name}/*.{h,m}"
  s.exclude_files = "#{s.name}/#{s.name}/External"
  s.prefix_header_file = "#{s.name}/#{s.name}/Supporting Files/#{s.name}-Prefix.pch"

  s.subspec 'API' do |ss|
    ss.source_files = "#{s.name}/#{s.name}/#{ss.name}/*.{h,m}"
  end

  s.subspec 'Composer' do |ss|
    ss.source_files = "#{s.name}/#{s.name}/#{ss.name}/*.{h,m}"
    ss.subspec 'TwitterShareExtensionUI' do |sss|
      sss.source_files = "#{s.name}/#{s.name}/#{ss.name}/#{sss.name}/**/*.{h,m}"
    end
  end

  s.subspec 'Controllers' do |ss|
    ss.source_files = "#{s.name}/#{s.name}/#{ss.name}/*.{h,m}"
    ss.subspec 'Video' do |sss|
      sss.source_files = "#{s.name}/#{s.name}/#{ss.name}/#{sss.name}/*.{h,m}"
    end
  end

  s.subspec 'Debugging' do |ss|
    ss.source_files = "#{s.name}/#{s.name}/#{ss.name}/*.{h,m}"
  end

  s.subspec 'External' do |ss|
    ss.subspec 'PunycodeCocoa' do |sss|
      sss.source_files = "#{s.name}/#{s.name}/#{ss.name}/Punycode Cocoa/*.{h,m}"
    end
  end

  s.subspec 'Identity' do |ss|
    ss.source_files = "#{s.name}/#{s.name}/#{ss.name}/*.{h,m}"
    ss.subspec 'APIClient' do |sss|
      sss.source_files = "#{s.name}/#{s.name}/#{ss.name}/API Client/*.{h,m}"
    end
  end

  s.subspec 'Libraries' do |ss|
    ss.subspec 'TwitterUI' do |sss|
      sss.source_files = "#{s.name}/#{s.name}/#{ss.name}/#{sss.name}/*.{h,m}"
    end
    ss.subspec 'TWTRImageLoader' do |sss|
      sss.source_files = "#{s.name}/#{s.name}/#{ss.name}/#{sss.name}/*.{h,m}"
    end
  end

  s.subspec 'Models' do |ss|
    ss.source_files = "#{s.name}/#{s.name}/#{ss.name}/*.{h,m}"
    ss.subspec 'JSONValidating' do |sss|
      sss.source_files = "#{s.name}/#{s.name}/#{ss.name}/#{sss.name}/*.{h,m}"
    end
    ss.subspec 'CardEntities' do |sss|
      sss.source_files = "#{s.name}/#{s.name}/#{ss.name}/Card Entities/*.{h,m}"
    end
    ss.subspec 'Cards' do |sss|
      # empty
    end
  end

  s.subspec 'MoPub' do |ss|
    ss.source_files = "#{s.name}/#{s.name}/#{ss.name}/*.{h,m}"
  end

  s.subspec 'Networking' do |ss|
    ss.source_files = "#{s.name}/#{s.name}/#{ss.name}/*.{h,m}"
  end

  s.subspec 'Notifications' do |ss|
    ss.source_files = "#{s.name}/#{s.name}/#{ss.name}/*.{h,m}"
  end

  s.subspec 'Persistence' do |ss|
    ss.source_files = "#{s.name}/#{s.name}/#{ss.name}/*.{h,m}"
  end

  s.subspec 'Resources' do |ss|
    ss.source_files = "#{s.name}/#{s.name}/#{ss.name}/*.{h,m}"
  end

  s.subspec 'ThirdParty' do |ss|
    ss.source_files = "#{s.name}/#{s.name}/#{ss.name}/*.{h,m}"
  end

  s.subspec 'Utilities' do |ss|
    ss.source_files = "#{s.name}/#{s.name}/#{ss.name}/*.{h,m}"
  end

  s.subspec 'Views' do |ss|
    ss.source_files = "#{s.name}/#{s.name}/#{ss.name}/*.{h,m}"
    ss.subspec 'TweetViewLayouts' do |sss|
      sss.source_files = "#{s.name}/#{s.name}/#{ss.name}/#{sss.name}/*.{h,m}"
    end
  end

  # http://mtl3.alibaba-inc.com/product/product_info.htm?productId=16069
  # TwitterKit

  s.framework = 'Foundation'
  s.framework = 'UIKit'
  s.framework = 'AddressBook'
  s.framework = 'AVFoundation'
  s.framework = 'Accounts'
  s.framework = 'CoreData'
  s.framework = 'CoreGraphics'
  s.framework = 'CoreServices'
  s.framework = 'CoreTelephony'
  s.framework = 'CoreText'
  s.framework = 'MediaPlayer'
  s.framework = 'QuartzCore'
  s.framework = 'SafariServices'
  s.framework = 'Security'
  s.framework = 'Social'
  s.framework = 'MapKit'
  s.framework = 'CoreLocation'

  # https://cocoapods.org/pods/mopub-ios-sdk
  # https://cocoapods.org/pods/OCMock
  s.dependency 'OCMock'
  s.dependency 'mopub-ios-sdk'
  s.dependency 'Punycode-Cocoa'

  #s.dependency 'libextobjc'
  s.dependency 'libextobjc/EXTKeyPathCoding'
  s.dependency 'libextobjc/EXTScope'
  s.dependency 'libextobjc/UmbrellaHeader'
  s.dependency 'libextobjc/RuntimeExtensions'
  
  s.dependency 'TwitterCore'

end
