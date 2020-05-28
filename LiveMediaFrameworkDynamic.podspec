Pod::Spec.new do |spec|
  spec.name         = "LiveMediaFrameworkDynamic"
  spec.version      = "0.0.7"
  spec.summary      = "LiveMediaFrameworkDynamic for components"
  spec.description  = <<-DESC
                      LiveMediaFrameworkDynamic for components
                      DESC
  spec.homepage     = "https://github.com/bbrichard/LiveMediaFrameworkDynamic"
  spec.license      = "MIT. Copyright (c) 2019年 BB. All rights reserved."
  spec.author       = { "Richard" => "Richard@seektopser.com" }
  spec.platform     = :ios, "9.0"
  spec.ios.deployment_target = "9.0"
  spec.dependency  'LiveMediaFramework'

  spec.source = { :http  => 'https://raw.githubusercontent.com/bbrichard/LiveMediaFrameworkDynamic/master/Products/LiveMediaFrameworkDynamic007.zip' }
 
  spec.default_subspec = 'zip'
  spec.subspec 'zip' do |zip|
      puts '-------------------------------------------------------------------'
      puts 'Notice: LiveMediaFrameworkDynamic is zip now'
      puts '-------------------------------------------------------------------'
      zip.ios.vendored_frameworks = '*.framework'
  end

end
