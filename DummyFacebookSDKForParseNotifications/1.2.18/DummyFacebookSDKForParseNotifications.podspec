Pod::Spec.new do |s|
  s.name             = "DummyFacebookSDKForParseNotifications"
  s.version          = "1.2.18"
  s.summary          = "Dummied plug-in replacement for the parts of the Facebook SDK required to link with the Parse iOS framework for notifications."
  s.description      = <<-DESC
                       	Dummied plug-in replacement for the parts of the Facebook SDK required to link with the Parse iOS framework for notifications

						This open-source library allows you to integrate Parse notifications into you iOS app
						without having to link in the complete Facebook SDK.  

						Linking in the Facebook SDK is particularly problematic if you are using the FacebookSDK 
						CocoaPod (because Pods enforce -ObjC) AND publishing your app to the Apple App Store. 
						There have been a number of recent cases of apps being rejected due to this. 

						While the Facebook SDK for iOS has now been changed to address this 
						(at FacebookSDK pod version 3.13.1),examination of the generated binary file shows that at least some suspect 
						symbols may still be present (e.g. ASIdentifierManager).  When this dummy library is used all suspect 
						symbols are eliminated and the Facebook SDK is not linked in at all).
					
						This library has been tested against Parse frameworks versions 1.2.18 and 1.2.19
                       DESC
  s.homepage         = "http://www.liquid-state.com"
  s.license          = {:type => 'Apache License 2.0', :file => 'LICENSE'}
  s.author           = { "Paul Cash" => "pcash62@gmail.com" }
  s.source           = { :git => "https://github.com/liquid-state/ls-dummy-facebook-sdk.git", :tag => "1.2.18" }

  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.source_files = 'Classes/ios/*.{h,m}'

  s.ios.exclude_files = 'Classes/osx'
  s.osx.exclude_files = 'Classes/ios'
end
