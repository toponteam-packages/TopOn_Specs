#
# Be sure to run `pod lib lint TPNAdmobAdapter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TPNMediationAdmobAdapter'
  s.version          = '13.7.0.2.9'

  s.summary          = 'TPNAdmobAdapter used for mediation with the TopOn SDK'

  s.description      = <<-DESC
     TopOn SDK for developer
                       DESC

  s.homepage = 'https://github.com/CocoaPods/Specs/search?o=desc&q=TPNAdmobAdapter&s=indexed'
  s.author = { 'topon' => 'mct-js@toponad.com' }
  s.license = { :type => "MIT", :file => "AnyThinkAdmobAdapter-#{s.version}/LICENSE" }

  s.ios.deployment_target = '13.0'
  s.static_framework = true
  s.requires_arc = true
  s.pod_target_xcconfig = {
    'OTHER_LDFLAGS' => ['-lObjC'],
    'VALID_ARCHS' => 'x86_64 armv7 armv7s arm64'
  }

  # s.source_files = 'TPNApplovinAdapter/Classes/**/*'
  s.source = {

    :http => "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkAdmobAdapter/#{s.version}/AnyThinkAdmobAdapter-#{s.version}.zip",

    :type => 'zip'
  }
  s.vendored_frameworks = "AnyThinkAdmobAdapter-#{s.version}/AnyThinkAdmobAdapter.xcframework"

  s.dependency 'TPNiOS','>=6.5.60'

  s.dependency 'Google-Mobile-Ads-SDK','13.7.0'

end
