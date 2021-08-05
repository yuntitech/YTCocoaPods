#
# Be sure to run `pod lib lint ATAuthSDK_iOS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ATAuthSDK_iOS'
  s.version          = '0.1.1'
  s.summary          = 'The iOS ATAuthSDK'
  s.description      = 'The iOS ATAuthSDK for YT.'

  s.homepage         = 'https://github.com/yuntitech/ATAuthSDK_iOS'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'cenfeng' => 'leejunhui2015@gmail.com' }
  s.source           = { :git => 'https://github.com/yuntitech/ATAuthSDK_iOS.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'
  
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.resources           = 'ATAuthSDK_iOS/ATAuthSDK.framework/ATAuthSDK.bundle'
  s.vendored_frameworks = 'ATAuthSDK_iOS/ATAuthSDK.framework','ATAuthSDK_iOS/YTXMonitor.framework','ATAuthSDK_iOS/YTXOperators.framework'
end
