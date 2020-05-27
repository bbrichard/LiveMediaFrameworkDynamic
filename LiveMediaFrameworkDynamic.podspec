Pod::Spec.new do |spec|
  spec.name         = "LiveMediaFrameworkDynamic"
  spec.version      = "0.0.1"
  spec.summary      = "LiveMediaFrameworkDynamic for components"
  spec.description  = <<-DESC
                      LiveMediaFrameworkDynamic for components
                      DESC
  spec.homepage     = "https://github.com/bbrichard/LiveMediaFrameworkDynamic"
  spec.license      = "MIT. Copyright (c) 2019年 BB. All rights reserved."
  spec.author       = { "Richard" => "Richard@seektopser.com" }
  spec.platform     = :ios, "9.0"
  spec.ios.deployment_target = "9.0"

  spec.source = { :http  => 'https://media.githubusercontent.com/media/bbrichard/LiveMediaFrameworkDynamic/master/LiveMediaFramework.zip' }
 
  spec.dependency  'LiveMediaFramework', '0.0.1'
  spec.default_subspec = 'zip'
  spec.subspec 'zip' do |zip|
      puts '-------------------------------------------------------------------'
      puts 'Notice: LiveMediaFrameworkDynamic is zip now'
      puts '-------------------------------------------------------------------'
      zip.ios.vendored_frameworks = '*.framework'
  end
  
  spec.prepare_command     = <<-EOF
  touch  LiveMediaFrameworkDynamic.framework/Modules/module.modulemap
  cat <<-EOF > LiveMediaFrameworkDynamic.framework/Modules/module.modulemap
  framework module BuglyDynamic {
      header "IJKAVMoviePlayerController.h"
      header "IJKFFMonitor.h"
      header "IJKFFOptions.h"
      header "IJKKVOController.h"
      header "IJKMediaFramework.h"
      header "IJKMediaModule.h"
      header "IJKMediaPlayback.h"
      header "IJKMediaPlayer.h"
      header "IJKNotificationManager.h"
      header "IJKSDLGLViewProtocol.h"
      header "IJKFFMoviePlayerController.h"
  }
  \EOF
  EOF
end