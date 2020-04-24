Pod::Spec.new do |s|
  s.name         = "SignalProtocolSwift_XIM"
  s.version      = "1.0.0"
  s.summary      = "SignalProtocol Swift wrapper for XIMSDK"
  s.homepage     = "https://gitlab.sachsen.cc/thirdparty/ios/SignalProtocolSwift"
  s.license      = "MIT"
  s.author       = { "TerryHu" => "thusterry@gmail.com" }

  s.module_name   = "SignalProtocolSwift"
  s.swift_version = "4.2", "5.0"
  s.requires_arc  = true

  s.osx.deployment_target = '10.9'
  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.source       = { :git => "https://gitlab.sachsen.cc/thirdparty/ios/SignalProtocolSwift.git", :tag => "#{s.version}" }
  s.dependency   "SignalProtocolC_XIM"
end
