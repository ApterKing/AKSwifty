
Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.name         = "AKSwifty"
  s.version      = "0.1.3"
  s.summary      = "Personal Swifty ToolKit"

  s.description  = <<-DESC
	Personal Swifty ToolKit
	AKUIKitBase: Base-UIViewController UINavigationController	
	AKExtensions: The Commonly used Swifty extension
	AKDashboardView: likes oil dashboard
                   DESC

  s.homepage     = "https://github.com/ApterKing/AKSwifty"

  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.license      = { :type => "MIT", :file => "LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.author             = { "ApterKing" => "wangcccong@outlook.com" }

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.platform     = :ios, "9.0"

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source       = { :git => "https://github.com/ApterKing/AKSwifty.git", :tag => "#{s.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source_files  = "Classes/*.swift"

  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.framework  = "Foundation"

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.requires_arc = true

  s.dependency = 'AKUIKitBase'
  s.dependency = 'AKExtensions'
  s.dependency = 'AKDashboardView'

end
