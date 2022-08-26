# Disable sending stats
ENV['COCOAPODS_DISABLE_STATS'] = 'true'

source 'https://cdn.cocoapods.org/'
#source 'ssh://git@git.triple-it.nl/ios/cocoapods.git'

project 'TFApp', 'Debug DEV' => :debug, 'Debug ACC' => :debug, 'Debug PROD' => :debug
platform :ios, '13.0'

use_frameworks!
# ignore all warnings from all pods
inhibit_all_warnings!

def injection_pods
    pod 'Resolver'
end

#def shared_pods
#  pod 'TIFExtensions'
#end

# MARK: App
target 'TFApp' do
  injection_pods

#  pod 'SwiftLint', :configurations => ['Debug DEV', 'Debug ACC', 'Debug PROD']

  # MARK: AppTests
  target 'TFAppTests' do
    inherit! :search_paths
  end
end

# MARK: Presentation
target 'TFPresentation' do
  injection_pods

  pod 'EasyPeasy'
#  pod 'TIFExtensions'
  pod 'Nuke'
  
  target 'TFPresentationTests' do
    inherit! :search_paths
  end
end

# MARK: Domain
target 'TFDomain' do
  injection_pods
end

# MARK: Data
target 'TFData' do
  injection_pods

  pod 'Alamofire'

  target 'TFDataTests' do
    inherit! :search_paths
  end
end

# MARK: Extensions
target 'TFExtensions' do
  injection_pods

  target 'TFExtensionsTests' do
    inherit! :search_paths
  end
end

# MARK: UITests
target 'TFAppUITests' do
    inherit! :search_paths
end

post_install do |installer_representation|
  installer_representation.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      # Disable Code Coverage for Pods projects
      config.build_settings['CLANG_ENABLE_CODE_COVERAGE'] = "NO"

      # Hide all warnings from pod frameworks
      config.build_settings['GCC_WARN_INHIBIT_ALL_WARNINGS'] = "YES"
    end
  end
end
