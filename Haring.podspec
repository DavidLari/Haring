Pod::Spec.new do |s|
  s.name             = 'Haring'
  s.version          = '1.5'
  s.summary          = 'Haring is a customizable and extensible Markdown parser for iOS.'
  s.description      = <<-DESC
Haring is a customizable and extensible Markdown parser for iOS.
It supports many of the standard Markdown elements through the use of Regular
Expressions. It also allows customization of font and color attributes for
all the Markdown elements.
                       DESC

  s.homepage         = 'https://github.com/davidlari/Haring'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'David Lari' => 'davidlari@gmail.com' }
  s.source           = { :git => 'https://github.com/davidlari/Haring.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/davidlari'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Haring/Classes/**/*'
  s.frameworks = 'UIKit'
end
