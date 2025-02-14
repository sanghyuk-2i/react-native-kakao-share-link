require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-kakao-share-link"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.platforms    = { :ios => "11.0" }
  s.source       = { :git => "https://github.com/sanghyuk-2i/react-native-kakao-share-link.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,cc,cpp,m,mm,swift}"
  s.requires_arc = true

  s.dependency "React-Core"
  s.dependency "KakaoSDKCommon", '~> 2.9.0'
  s.dependency "KakaoSDKLink", '~> 2.9.0'
  s.dependency "KakaoSDKTemplate", '~> 2.9.0'
end
