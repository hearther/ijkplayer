#
# Be sure to run `pod lib lint IJKPlayerLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ijkplayerPrecompiled'
  s.version          = '3.4'
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
  s.requires_arc = false
  s.ios.deployment_target = '8.0'       
  s.source = { :type => "zip", :http => 'https://github.com/hearther/ijkplayer/releases/download/ff3.4--ijk0.8.7--20180103--002Dev/universal.zip', :flatten => true }  
  #s.source = { :type => "zip", :http => 'http://localhost/universal.zip', :flatten => true }  
  s.source_files = 'universal/**/*'
  s.public_header_files = 'universal/include/**/*.h'
  s.header_mappings_dir = 'universal/include'
  s.vendored_libraries  = 'universal/lib/**/*.a'
  s.libraries = 'x264', 'avcodec', 'avfilter', 'avformat', 'avutil', 'swresample', 'swscale', 'iconv', 'z', 'bz2', 'fdk_aac'
  s.frameworks = 'VideoToolbox', 'Foundation'
  s.xcconfig = { 
  'OTHER_LDFLAGS' => '-read_only_relocs suppress',
  'ENABLE_BITCODE' => 'NO' }
end
