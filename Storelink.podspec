require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.platform              = :ios
  s.ios.deployment_target = '13.0'
  s.name                  = package['name']
  s.module_name           = package['name']
  s.version               = package['version']
  s.summary               = package['description']
  s.license               = package['license']

  s.author                = package['author']
  s.homepage              = package['homepage']

  s.source                = { :git => package['repository']['url'], :tag => package['version'] }

  s.frameworks            = 'JavaScriptCore'
  s.vendored_frameworks   = "Frameworks/*"
  s.resource_bundles      = {
                              package['name'] => ["Resources/*"],
                            }

  s.library               = 'c++'
  s.xcconfig              = {
                              'CLANG_CXX_LANGUAGE_STANDARD' => 'c++11',
                              'CLANG_CXX_LIBRARY' => 'libc++',
                            }
end