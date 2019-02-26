Pod::Spec.new do |s|
  s.name         = "SignalProtocolSwift"
  s.version      = "0.0.1"
  s.summary      = "SignalProtocolSwift"
  s.homepage     = "https://github.com/Re-cover/SignalProtocolSwift"
  s.license      = "MIT"
  s.author       = { "TerryHu" => "thusterry@gmail.com" }

  s.platform     = :ios, "10.0"
  s.module_name   = "SignalProtocolSwift"
  s.swift_version = "4.2"
  s.requires_arc  = true

  s.source       = { :git => "https://github.com/Re-cover/SignalProtocolSwift.git", :tag => "#{s.version}" }
  
  s.default_subspec = "SignalProtocolSwift"

  s.subspec "SignalProtocolSwift" do |sps|
    sps.source_files = "SignalProtocolSwift/**/*.{h,swift}"
    sps.dependency "SignalProtocolSwift/SignalProtocolC"
  end

  s.subspec "SignalProtocolC" do |spc|
    spc.vendored_frameworks = "SignalProtocolC/SignalProtocolC.framework"
  end

end
