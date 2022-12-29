# react-native-screen-capture.podspec

require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-screen-capture"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-screen-capture allows you to protect screens in your app from being captured or recorded, as well as be notified if a screenshot is taken while your app is foregrounded.
                   DESC
  s.homepage     = "https://github.com/recepkocur/react-native-screen-capture"
  # brief license entry:
  s.license      = "MIT"
  # optional - use expanded license entry instead:
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "Recep Kocur" => "recepkocur@gmail.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/recepkocur/react-native-screen-capture.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,cc,cpp,m,mm,swift}"
  s.requires_arc = true

  s.dependency "React"
  # ...
  # s.dependency "..."
end

