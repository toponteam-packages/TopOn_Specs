#
# Be sure to run `pod lib lint AnyThinkBigoAdapter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TPNDebugUISDK'
  s.version          = '1.1.1'
  s.summary          = '#{s.name} used for mediation with the TPN SDK'
  s.description      = <<-DESC
     TopOn SDK for developer
                       DESC

  s.homepage = 'https://github.com/CocoaPods/Specs/search?o=desc&q=#{s.name}&s=indexed'
  s.author = { 'topon' => 'mct-js@toponad.com' }
  s.license = { :type => "MIT", :file => "#{s.name}-#{s.version}/LICENSE" }

  s.ios.deployment_target = '10.0'
  s.static_framework = true
  s.requires_arc = true
  s.pod_target_xcconfig = {
    'OTHER_LDFLAGS' => ['-lObjC'],
    'VALID_ARCHS' => 'x86_64 armv7 armv7s arm64'
  }


  s.source = {
    :http => "https://topon-sdk-release.oss-accelerate.aliyuncs.com/SDK_Release/DebuggerUI/iOS/#{s.version}/AnyThinkDebuggerUISDK.zip",
    :type => 'zip'
  }
  s.vendored_frameworks = "AnyThinkDebuggerUISDK/AnyThinkDebuggerUISDK.xcframework"
  s.resource = 'AnyThinkDebuggerUISDK/AnyThinkDebuggerUISDK.bundle'
  s.dependency 'TPNiOS','>= 6.5.60'
end

