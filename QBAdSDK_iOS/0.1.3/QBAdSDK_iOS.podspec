#
# Be sure to run `pod lib lint QBAdSDK_iOS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'QBAdSDK_iOS'
  s.version          = '0.1.3'
  s.summary          = 'QBAdSDK for iOS'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  QBAdSDK for iOS
                       DESC

  s.homepage         = 'https://github.com/yuntitech/QBAdSDK_iOS'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'cenfeng' => 'leejunhui2015@gmail.com' }
  s.source           = { :git => 'https://github.com/yuntitech/QBAdSDK_iOS', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'
  s.frameworks = 'UIKit', 'MapKit', 'WebKit', 'MediaPlayer', 'CoreLocation', 'AdSupport', 'CoreMedia', 'AVFoundation', 'CoreTelephony', 'StoreKit', 'SystemConfiguration', 'MobileCoreServices', 'CoreMotion', 'Accelerate','AudioToolbox','JavaScriptCore','Security','CoreImage','AudioToolbox','ImageIO','QuartzCore','CoreGraphics','CoreText'
  s.libraries = 'c++', 'resolv', 'z', 'sqlite3', 'bz2', 'xml2', 'iconv', 'c++abi'

  s.source_files = 'QBAdSDK_iOS/Classes/**/*.{h,m}' 

  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.vendored_libraries  = 'QBAdSDK_iOS/Classes/libquBianSDK.a', 'QBAdSDK_iOS/thirdSdkSource/gdt/libGDTMobSDK.a'
  s.resources           = 'QBAdSDK_iOS/thirdSdkSource/chuanSanJIa/BUAdSDK.bundle'
  s.vendored_frameworks = 'QBAdSDK_iOS/thirdSdkSource/chuanSanJIa/BUAdSDK.framework','QBAdSDK_iOS/thirdSdkSource/chuanSanJIa/BUCNAuxiliary.framework','QBAdSDK_iOS/thirdSdkSource/chuanSanJIa/BUFoundation.framework', 'QBAdSDK_iOS/thirdSdkSource/kusiShou/KSAdSDK.framework'

end
