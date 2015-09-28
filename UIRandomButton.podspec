
Pod::Spec.new do |s|

  s.name         = "UIRandomButton"
  s.version      = "0.0.1"
  s.summary      = "UIRandomButton allows you to create a background color for your uibuttons"
  s.description  = "If you want to create a random color for your UIButton, probably you want to use UIRandomButton, depenging on the selection that you made, the code will create a color to represent this element in the user interface, just needs to be initialized and implemented and thats it"
  s.homepage     = "https://twitter.com/marcos_gn1"
  s.license      = "MIT"
  s.author    = "Marcos Garcia"
  s.social_media_url   = "https://twitter.com/marcos_gn1"
  s.platform     = :ios
  s.source       = { :git => "https://github.com/1marcosgn/UIRandomButton", :tag => "0.0.1" }
  s.source_files  = "*.{h,m}"
  s.requires_arc = true
  s.dependency "JSONKit", "~> 1.4"

end