#
# Be sure to run `pod lib lint IJKPlayerLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ijkplayer'
  s.version          = '0.1.0'
  s.summary          = 'A short description of ijkplayer.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/<GITHUB_USERNAME>/ijkplayer'
  s.author           = { 'Bunny' => 'hearther.lin@gmail.com' }
  s.source           = { :git => 'https://github.com/hearther/ijkplayer.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
   
  s.source_files = 'ios/IJKMediaPlayer/IJKMediaPlayer/**/*.{h,m,c,pch}', 'ios/IJKMediaPlayer/*.{h,m,c,pch}', 'ijkmedia/**/*.{h,m,c,pch}'
  s.exclude_files = 'ijkmedia/ijkj4a/**/*', 'ijkmedia/ijkplayer/android/**/*', 'ijkmedia/ijkplayer/Android.mk', 'ijkmedia/ijksdl/android/**/*', 'ijkmedia/ijksdl/Android.mk'
  s.public_header_files = 'ios/IJKMediaPlayer/IJKMediaPlayer/*.h'

  s.requires_arc = false
  s.requires_arc = 'ios/IJKMediaPlayer/IJKMediaPlayer/**/*.{m,c}', 'ios/IJKMediaPlayer/*.{m,c}', 'ijkmedia/**/*.{c,m}'

  s.default_subspec = 'no-arc'
  
  s.subspec 'no-arc' do |sp|
    sp.source_files = 'ios/IJKMediaPlayer/IJKMediaPlayer/ijkmedia/ijkplayer/ios/ijkplayer_ios.m', 'ios/IJKMediaPlayer/IJKMediaPlayer/ijkmedia/ijksdl/ios/ijksdl_vout_ios_gles2.m', 'ios/IJKMediaPlayer/IJKMediaPlayer/ijkmedia/ijksdl/ios/ijksdl_aout_ios_audiounit.m'
    sp.requires_arc = false
  end


  s.xcconfig = { 'OTHER_LDFLAGS' => '-read_only_relocs suppress',
		#'USER_HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/ijkplayer/ijkmedia"/** "$(PODS_ROOT)/ijkplayer/ios/build/universal/include"/**', 
		'USER_HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/ijkplayer/ijkmedia"/** "$(PODS_ROOT)/ijkplayer/ios/IJKMediaPlayer/IJKMediaPlayer/ijkmedia"/**',
		'ALWAYS_SEARCH_USER_PATHS' => 'YES'
  }
    
end
