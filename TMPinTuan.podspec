#
#  Be sure to run `pod spec lint TMPinTuan.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "TMPinTuan"
  spec.version      = "0.0.1.1"
  spec.summary      = "This is a TMPinTuan's summary"
  spec.description  = <<-DESC
                      TM拼团描述：这里的描述，必须比s.summary的长度要长。
                   DESC

  spec.homepage     = "https://github.com/lizishiye/TMPinTuan.git"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "lizishiye" => "1063357883@qq.com" }
  spec.platform     = :ios
  spec.platform     = :ios, "9.0"
  spec.ios.deployment_target = '9.0'

  spec.source       = { :git => "https://github.com/lizishiye/TMPinTuan.git", :tag => "#{spec.version}" }
  spec.source_files = "TMPinTuan/**/*.{h}"

  spec.requires_arc = true 

  # spec.resources  = "TMPinTuan/Resource/*.bundle"
  spec.ios.vendored_frameworks = 'TMPinTuan/**/*.framework'

valid_archs = ['armv7s','arm64','x86_64']
spec.xcconfig = {
  'VALID_ARCHS' =>  valid_archs.join(' '),
}
spec.pod_target_xcconfig = {
    'ARCHS[sdk=iphonesimulator*]' => '$(ARCHS_STANDARD_64_BIT)'
}

spec.dependency'TMSDK'
spec.dependency'TMUserCenter'
spec.dependency'TMShare'
spec.dependency'MJExtension'
spec.dependency'AFNetworking'
spec.dependency'MJExtension'

end
