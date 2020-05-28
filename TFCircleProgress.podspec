#
# Be sure to run `pod lib lint TFCircleProgress.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TFCircleProgress'
  s.version          = '0.0.1'
  s.summary          = '一个环形的进度条.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
   环形进度条组件，可以设置进度条颜色，进度条宽度，动画时间等
                       DESC

  s.homepage         = 'https://github.com/yiqing30911/TFCircleProgress'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '方涛' => '419512332@qq.com' }
  s.source           = { :git => 'https://github.com/yiqing30911/TFCircleProgress.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'TFCircleProgress/Classes/**/*'
  
  # s.resource_bundles = {
  #   'TFCircleProgress' => ['TFCircleProgress/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
