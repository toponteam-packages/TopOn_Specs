#
# Be sure to run `pod lib lint TPNZYAdapter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TPNMediationAdxSmartdigimktAdapter'
  s.version          = '6.5.80.2.9'
  s.summary          = 'TPNAdxSmartdigimktAdapter used for mediation with the TopOn SDK'

  s.description      = <<-DESC
     TopOn SDK for developer
                       DESC

  s.homepage = 'https://github.com/CocoaPods/Specs/search?o=desc&q=TPNSmartdigimktAdapter&s=indexed'
  s.author = { 'topon' => 'mct-js@toponad.com' }
  s.license = { :type => "MIT", :file => "AnyThinkSmartdigimktAdapter-#{s.version}/LICENSE" }

  s.ios.deployment_target = '10.0'
  s.static_framework = true
  s.requires_arc = true
  s.pod_target_xcconfig = {
    'OTHER_LDFLAGS' => ['-lObjC'],
    'VALID_ARCHS' => 'x86_64 armv7 armv7s arm64'
  }

  # s.source_files = 'TPNSmartdigimktAdapter/Classes/**/*'
  s.source = {
    :http => "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkSmartdigimktAdapter/#{s.version}/AnyThinkSmartdigimktAdapter-#{s.version}.zip",
    :type => 'zip'
  }
  s.vendored_frameworks = "AnyThinkSmartdigimktAdapter-#{s.version}/AnyThinkSmartdigimktAdapter.xcframework"
  
  s.dependency 'TPNiOS','>=6.5.60'
  s.dependency 'SmartdigimktSDK','6.5.80'
end
