Pod::Spec.new do |s|
  s.platform              = :ios
  s.ios.deployment_target = '13.0'
  s.name                  = "Storelink"
  s.module_name           = "Storelink"
  s.version               = "0.1.33"
  s.summary               = "Storelink for iOS"
  s.license               = "©2024 Cooklist. All rights reserved"
  s.author                = "Cooklist"
  s.homepage              = "https://cooklist.gitbook.io/storelink-sdk/quickstart/ios-swiftui"
  s.source                = { :git => "https://github.com/Cooklist/storelink-ios.git", :tag => "0.1.33" }
  s.preserve_paths        = "LICENSE"

  s.frameworks            = "JavaScriptCore"
  s.vendored_frameworks   = "Frameworks/*"
  s.resource_bundles      = {
                              "Storelink" => ["Resources/*"],
                            }

  s.library               = 'c++'
  s.xcconfig              = {
                              'CLANG_CXX_LANGUAGE_STANDARD' => 'c++11',
                              'CLANG_CXX_LIBRARY' => 'libc++',
                            }
end