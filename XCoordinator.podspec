Pod::Spec.new do |spec|
    spec.name         = 'XCoordinator'
    spec.version      = '2.2.2-abvolvo.1'
    spec.license      = { :type => 'MIT' }
    spec.homepage     = 'https://github.com/volvogroup-mobility'
    spec.authors      = { 'Stefan Kofler' => 'stefan.kofler@quickbirdstudios.com', 'Paul Kraft' => 'pauljohannes.kraft@quickbirdstudios.com', 'Iryna Piskorska' => 'iryna.piskorska@volvo.com }
    spec.summary      = 'Navigation framework based on coordinator pattern.'
    spec.source       = { :git => 'https://github.com/volvogroup-mobility/XCoordinator.git', :tag => spec.version.to_s }
    spec.module_name = 'XCoordinator'
    spec.swift_version = '5.1'
    spec.ios.deployment_target = '9.0'
    spec.tvos.deployment_target = '9.0'
    spec.source_files = 'Sources/XCoordinator/*.swift'
    spec.default_subspec = 'Core'

    spec.subspec 'Core' do |ss|
        ss.source_files = 'Sources/XCoordinator/*.swift'
        ss.framework  = 'UIKit'
    end

    spec.subspec 'RxSwift' do |ss|
        ss.dependency 'XCoordinator/Core'
        ss.dependency 'RxSwift', '~> 6.1'
        ss.source_files = 'Sources/XCoordinatorRx/*.swift'
    end

    spec.subspec 'Combine' do |ss|
        ss.dependency 'XCoordinator/Core'
        ss.source_files = 'Sources/XCoordinatorCombine/*.swift'
    end
end
