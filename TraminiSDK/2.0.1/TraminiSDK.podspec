#
# Be sure to run `pod lib lint AnyThinkAdColonyAdapter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TraminiSDK'
  s.version          = '2.0.1'

  s.summary          = 'TraminiSDK used for mediation with the TopOn SDK'

  s.description      = <<-DESC
     TopOn SDK for developer
                       DESC

  s.homepage = 'https://github.com/CocoaPods/Specs/search?o=desc&q=TraminiSDK&s=indexed'
  s.author = { 'topon' => 'mct-js@toponad.com' }
  s.license = { :type => "MIT", :file => "TraminiSDK-#{s.version}/LICENSE" }

  s.ios.deployment_target = '10.0'
  s.static_framework = true
  s.requires_arc = true
  s.pod_target_xcconfig = {
    'OTHER_LDFLAGS' => ['-lObjC'],
    'VALID_ARCHS' => 'x86_64 armv7 armv7s arm64'
  }

  s.source = {


    :http => "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TraminiSDK/#{s.version}/TraminiSDK-#{s.version}.zip",

    :type => 'zip'
  }
  s.vendored_frameworks = "TraminiSDK-#{s.version}/TraminiSDK.xcframework"

end
