# coding: utf-8

platform :ios, '9.0'

workspace 'TwitterContainer.xcworkspace'
project 'TwitterCore/TwitterCore.xcodeproj'


target 'TwitterCore' do

  #podspec :path=>'TwitterCore.podspec'
  pod 'libextobjc'
  #pod 'libextobjc', :subspecs => ['EXTKeyPathCoding', 'EXTScope', 'UmbrellaHeader', 'RuntimeExtensions']

  target 'TwitterCoreTests' do
    pod 'OCMock'
  end
end

#target 'TwitterKit' do
#  project 'TwitterKit/TwitterKit.xcodeproj'
#  podspec :path=>'TwitterKit.podspec'
#end


# 只为消除警告，无副作用，勿删
post_install do |installer|
  #project = installer.pods_project
  installer.generated_projects.each do |project|
    project.build_configurations.each do |config|
      config.build_settings.delete 'CLANG_WARN_DOCUMENTATION_COMMENTS'
    end
    project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings.delete 'IPHONEOS_DEPLOYMENT_TARGET'
      end
    end
  end
end
