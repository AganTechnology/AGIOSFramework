#
# Be sure to run `pod lib lint AGEngineKits.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AGEngineKits'
  s.version          = '2.2.0'
  s.summary          = 'Agan Frameword'

  s.description      = <<-DESC
  该内容用于对接通讯能力， 使用该 pod ，请严格遵循通讯内容协议
                       DESC

  s.homepage         = 'https://github.com/AganTechnology/AGIOSFramework'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'Copyright', :text => 'Copyright © 2024 AganTechnology. All Rights Reserved.\n' }
  s.author           = { 'aganyunke' => 'shu_pian@aganyunke.com' }
  s.source           = { :http => 'https://agan-cloud-public-resources.oss-cn-hangzhou.aliyuncs.com/release/AGEngineKits2_2_0.zip' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = 'AGEngineKit/Classes/**/*.{sh,m}'
  s.resources = 'AGEngineKit/Assets/*'
  
  s.vendored_frameworks = ['AGEngineKit/Framework/*.framework', 'AGEngineKit/Framework/*.xcframework']
  s.vendored_libraries  = ['AGEngineKit/Framework/*.a']
  s.dependency 'AliyunOSSiOS'
  # 系统framework库
  s.frameworks = 'ReplayKit', 'CoreGraphics', 'Accelerate', 'SystemConfiguration', 'AssetsLibrary',
  'CoreTelephony', 'QuartzCore', 'CoreFoundation', 'CoreLocation',
  'ImageIO', 'CoreMedia', 'CoreMotion', 'AVFoundation', 'WebKit',
  'AudioToolbox', 'CFNetwork', 'MobileCoreServices', 'AdSupport', 'OpenGLES'
  # 系统C库
  s.libraries = 'resolv', 'z', 'c++', 'c++.1', 'c++abi', 'z.1.2.8'
  s.requires_arc        = false
  s.xcconfig            = {'GCC_PREPROCESSOR_DEFINITIONS' => 'PJ_AUTOCONF=1'}
  
  s.script_phase = { :name => 'CP BUNDLES', :script => '${PODS_TARGET_SRCROOT}/AGEngineKit/Classes/copy.sh', :execution_position => :before_compile }
end
