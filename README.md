# TopOn Official CocoaPods Specs

**English** | [中文说明](README_CN.md)

The official CocoaPods Spec repository for TopOn iOS SDK and mediation adapters.

## Usage

Add the following spec sources at the **very top** of your `Podfile`:

```ruby
# 1. TopOn Official Specs (for TopOn SDK)
source 'https://github.com/toponteam-packages/TopOn_Specs.git'

# 2. CocoaPods Official Trunk CDN (for third-party SDK)
source 'https://cdn.cocoapods.org/'
```

### Example `Podfile`

```ruby
platform :ios, '11.0'
use_frameworks!

target 'MyAppTarget' do

  #Add TopOn XXXSDK
  pod 'TPNXXXSDK'
      
end
```

## FAQ & Troubleshooting

### 1. Cannot find the latest version when running `pod install`?
CocoaPods caches spec repositories locally. When a new version is released, update your local spec repo with:
```bash
pod repo update TopOn_Specs
# Or install with repo update:
pod install --repo-update
```

### 2. Why is `https://cdn.cocoapods.org/` required?
Because mediation adapters depend on the official third-party network SDKs (such as Google Mobile Ads SDK, AppLovin SDK, etc.), which are hosted on the public CocoaPods registry.
