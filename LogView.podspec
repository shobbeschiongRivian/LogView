Pod::Spec.new do |s|
    s.name         = 'LogView'
    s.version      = '1.0.6'
    s.summary      = 'LogView is a powerfull and modern log viewer for iOS. Native. Built with SwiftUI.'
    s.homepage     = 'https://github.com/alexejn/LogView'
    s.license      = { :type => 'MIT', :file => 'LICENSE' }
    s.author       = { 'Alexej' => '' }  # replace with the actual author's email if available
    s.source       = { :git => 'https://github.com/alexejn/LogView.git', :tag => "#{s.version}" }
    
    s.platform      = :ios, '5.0'
    s.ios.deployment_target = '15.0'
    s.source_files  = 'Sources/**/*.{swift,h,m}'
    s.frameworks    = 'Foundation', 'SwiftUI', 'OSLog', 'os', 'Combine'
    s.requires_arc  = true
end