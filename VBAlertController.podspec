#
# Be sure to run `pod lib lint VBAlertController.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "VBAlertController"
  s.version          = "0.0.1"
  s.summary          = "This is a very simple component to help developers to present alerts with vibration."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
                        Descrição do pod...
                        Descrição do pod...
                        Descrição do pod...
                        Descrição do pod...
                        Descrição do pod...
                        Descrição do pod...
                        Descrição do pod...
                        Descrição do pod...
                        Descrição do pod...
                        Descrição do pod...
                        Descrição do pod...
                       DESC

  s.homepage         = "https://github.com/zethomazetto/VBAlertController"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Ezequiel Thomazetto" => "zethomazetto@gmail.com" }
  s.source           = { :git => "https://github.com/zethomazetto/VBAlertController.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '8.4'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'VBAlertController' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
