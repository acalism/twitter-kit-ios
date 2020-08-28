
Pod::Spec.new do |s|
  s.name = "TwitterCore"
  s.version = "3.4.3"
  s.summary = "Increase user engagement and app growth. https://github.com/twitter/twitter-kit-ios"
  s.homepage = "https://code.aone.alibaba-inc.com/Youpik-iOS/twitter-sdk"
  s.documentation_url = "https://github.com/twitter/twitter-kit-ios/wiki"
  s.social_media_url = "https://twitter.com/TwitterDev"
  s.authors = "Twitter"
  s.platforms = { :ios => "9.0", :tvos => "9.0" }
  s.source = { :git => "git@gitlab.alibaba-inc.com:Youpik-iOS/twitter-sdk.git", :tag=>s.version }
  s.license = { :type => "Commercial", :text => "Copyright Twitter, Inc. All Rights Reserved. Use of this software is subject to the terms and conditions of the Twitter Kit Agreement located at https://dev.twitter.com/overview/terms/twitterkit and the Developer Agreement located at https://dev.twitter.com/overview/terms/agreement. OSS: https://github.com/twitter/twitter-kit-ios/blob/master/OS_LICENSES.md" }
  #s.ios.vendored_frameworks = "iOS/TwitterCore.framework"
  #s.tvos.vendored_frameworks = "tvOS/TwitterCore.framework"
  #s.ios.frameworks = "Accounts", "CoreData", "CoreGraphics", "Foundation", "Security", "Social", "UIKit"
  #s.tvos.frameworks = "CoreData", "CoreGraphics", "Foundation", "Security", "UIKit"

  s.framework = 'Foundation'
  s.framework = 'UIKit'
  s.framework = 'Security'
  s.framework = 'CoreData'
  s.framework = 'CoreGraphics'
  s.framework = 'Social'
  s.framework = 'Accounts'

  #s.dependency 'OCMock'

  s.dependency 'libextobjc'
  #s.dependency 'libextobjc/EXTKeyPathCoding'
  #s.dependency 'libextobjc/EXTScope'
  #s.dependency 'libextobjc/UmbrellaHeader'
  #s.dependency 'libextobjc/RuntimeExtensions'


  s.source_files = "#{s.name}/#{s.name}/**/*.{h,m}"
  s.prefix_header_file = "#{s.name}/#{s.name}/#{s.name}-Prefix.pch"
  s.public_header_files = "#{s.name}/#{s.name}/{TWTRDefines,TWTRConstants}.h"

  s.subspec 'Analytics' do |ss|
    ss.source_files = "#{s.name}/#{s.name}/#{ss.name}/*.{h,m}"
  end

  s.subspec 'Identity' do |ss|
    ss.source_files = "#{s.name}/#{s.name}/#{ss.name}/**/*.{h,m}"
    ss.public_header_files = "#{s.name}/#{s.name}/#{ss.name}/{TWTRGuestSession, TWTRCoreOAuthSigning, TWTRSession, TWTRSessionStore}.h"
    
    #ss.subspec 'V2' do |sss|
    #  sss.source_files = "#{s.name}/#{s.name}/#{ss.name}/#{sss.name}/*.{h,m}"
    #end
  end

  s.subspec 'Networking' do |ss|
    ss.source_files = "#{s.name}/#{s.name}/#{ss.name}/*.{h,m}"
    ss.public_header_files = "#{s.name}/#{s.name}/#{ss.name}/{TWTRAuthConfig, TWTRAuthSession}.h"

    ss.subspec 'API' do |sss|
      sss.source_files = "#{s.name}/#{s.name}/#{ss.name}/#{sss.name}/*.{h,m}"
      sss.public_header_files = "#{s.name}/#{s.name}/#{ss.name}/#{sss.name}/{TWTRAPIErrorCode,}.h"
    end

    ss.subspec 'Pipeline' do |sss|
      sss.source_files = "#{s.name}/#{s.name}/#{ss.name}/#{sss.name}/*.{h,m}"
    end

    ss.subspec 'Security' do |sss|
      sss.source_files = "#{s.name}/#{s.name}/#{ss.name}/#{sss.name}/*.{h,m}"
    end

    ss.subspec 'ThirdParty' do |sss|
      sss.source_files = "#{s.name}/#{s.name}/#{ss.name}/#{sss.name}/*.{h,m}"
    end
  end

  s.subspec 'Resources' do |ss|
    ss.source_files = "#{s.name}/#{s.name}/#{ss.name}/*.{h,m}"
  end

  s.subspec 'Utilities' do |ss|
    ss.source_files = "#{s.name}/#{s.name}/#{ss.name}/*.{h,m}"
    ss.public_header_files = "#{s.name}/#{s.name}/#{ss.name}/TWTRColorUtil.h"
  end

  s.subspec 'SupportingFiles' do |ss|
    ss.source_files = "#{s.name}/#{s.name}/Supporting Files/*.{h,m}"
  end
end
