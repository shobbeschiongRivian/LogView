Pod::Spec.new do |s|
    s.name         = 'LogView'
    s.version      = '1.0.6'
    s.summary      = 'LogView is a powerfull and modern log viewer for iOS. Native. Built with SwiftUI.'
    s.homepage     = 'https://github.com/alexejn/LogView'
    s.license      = { :type => 'MIT', :file => 'LICENSE' }
    s.author       = { 'Alexej' => '' }  # replace with the actual author's email if available
    s.source       = { :git => 'https://github.com/alexejn/LogView.git' }

    s.swift_version = '5.10'
    s.ios.deployment_target = '16.0'
    s.source_files  = 'Sources/**/*.{swift}'
    s.frameworks    = ['Foundation', 'SwiftUI', 'OSLog','Combine']
    s.requires_arc  = true
end 
