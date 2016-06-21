#
# Be sure to run `pod lib lint GMUrlSigner.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "GMUrlSigner"
  s.version          = "0.1.0"
  s.summary          = "This example provides a function for generating the URL of signatures required for Google Maps API web service"
  s.description      = <<-DESC
This example provides a function for generating the URL of signatures required for Google Maps API web service (business account) calls in Objective-C projects.

The original code is available [here](http://gmaps-samples.googlecode.com/svn/trunk/urlsigning/urlsigner.m).

I simply took the necessary code to the URL signature generation and use it in a simple way.

You can test the generated signature with this [tool](https://m4b-url-signer.appspot.com/)
                       DESC
  s.homepage         = "https://github.com/youssman/GMUrlSigner"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "youssman" => "haiti.youssef@gmail.com" }
  s.source           = { :git => "https://github.com/youssman/GMUrlSigner.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/YHaiti'

  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'GMUrlSigner' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
