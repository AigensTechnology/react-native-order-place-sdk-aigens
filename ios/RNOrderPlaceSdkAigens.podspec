
Pod::Spec.new do |s|
  s.name         = "RNOrderPlaceSdkAigens"
  s.version      = "1.0.0"
  s.summary      = "RNOrderPlaceSdkAigens"
  s.description  = <<-DESC
                  RNOrderPlaceSdkAigens ...
                   DESC
  s.homepage     = "https://github.com/AigensTechnology/react-native-order-place-sdk-aigens"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "peijue.chen@aigens.cn" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/AigensTechnology/react-native-order-place-sdk-aigens.git", :tag => "master" }
  s.source_files  = "**/*.{h,m,swift}"
  s.requires_arc = true


  s.dependency "React"
  s.dependency "OrderPlaceSdkPrd"
  #s.dependency "others"

end

  