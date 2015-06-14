Pod::Spec.new do |s|
  s.name         = "TnEObjectiveCHelpers"
  s.version      = "0.1"
  s.summary      = "Cocoa Helper classes for iOS"
  s.homepage     = "https://github.com/Grouper/FlatUIKit"
  s.license      = 'MIT'
  s.authors      = { "Sachith Kadamba" => "sachithkadamba@gmail.com" }
  s.source       = { :git => "https://github.com/sachithkadamba/TnEObjectiveCHelpers.git"} 
  s.ios.deployment_target = '7.0'
  s.platform     = :ios, '7.0'
  s.source_files = 'TnEObjectiveCHelpers/TnEObjectiveCHelpers/Classes', 'Classes/**/*.{h,m}'


#  s.requires_arc = true
end