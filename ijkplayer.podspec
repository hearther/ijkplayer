#
# Be sure to run `pod lib lint IJKPlayerLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ijkplayer'
  s.version          = '0.8.8'
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
  s.requires_arc = false
  s.requires_arc = 'ios/IJKMediaPlayer/IJKMediaPlayer/*'  
   
  s.source_files = 'ios/IJKMediaPlayer/IJKMediaPlayer/**/*.{h,m,c,pch,cpp}', 'ijkmedia/**/*.{h,m,c,cpp,pch}'
  s.exclude_files = 'ijkmedia/ijkj4a/**/*', 'ijkmedia/ijkplayer/android/**/*', 'ijkmedia/ijkplayer/Android.mk', 'ijkmedia/ijkplayer/ijkavformat/ijkioandroidio.c', 'ijkmedia/ijksdl/android/**/*', 'ijkmedia/ijksdl/Android.mk'
  s.public_header_files = 'ios/IJKMediaPlayer/IJKMediaPlayer/*.h', 'ijkmedia/ijkplayer/ijkavutil/ijkutils.h'
  #s.header_mappings_dir = 'ios/IJKMediaPlayer/IJKMediaPlayer/' 

  s.xcconfig = { 'OTHER_LDFLAGS' => '-read_only_relocs suppress',
		#'USER_HEADER_SEARCH_PATHS' => '"/Users/bunny/Maktar/ijkplayer/ijkmedia"/** "/Users/bunny/Maktar/ijkplayer/ios/IJKMediaPlayer/IJKMediaPlayer/ijkmedia"/**', 
		'USER_HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/ijkplayer/ijkmedia"/** "$(PODS_ROOT)/ijkplayer/ios/IJKMediaPlayer/IJKMediaPlayer/ijkmedia"/**',
		'ALWAYS_SEARCH_USER_PATHS' => 'YES'
    }
    
  s.dependency 'ijkplayerPrecompiled'
#  s.subspec 'precompiled' do |ss|
#	  	ss.source_files = 'ios/build/universal/**/*'
#    	ss.public_header_files = 'ios/build/universal/include/**/*.h'
#    	ss.header_mappings_dir = 'ios/build/universal/include'
#    	ss.vendored_libraries  = 'ios/build/universal/lib/*.a'
#    	ss.libraries = 'x264', 'avcodec', 'avfilter', 'avformat', 'avutil', 'swresample', 'swscale', 'iconv', 'z', 'bz2', 'fdk_aac'
#    	ss.frameworks = 'VideoToolbox'
#  end
    
end
