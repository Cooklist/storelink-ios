require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.homepage     = package['homepage']
  s.license      = { :type => 'Proprietary', :file => 'LICENSE' }
  s.author       = package['author']
  s.source       = { :git => package['repository']['url'] }
  
  s.ios.deployment_target = '12.4'
  s.osx.deployment_target = '10.13'
  
  s.swift_version = '5.0'
  
  s.module_name  = package['name']
  s.vendored_frameworks = "Frameworks/*"
  s.resource_bundles = {
    package['name'] => ["Resources/*"],
  }
  
  s.library = 'c++'
  s.xcconfig = {
    'CLANG_CXX_LANGUAGE_STANDARD' => 'c++11',
    'CLANG_CXX_LIBRARY' => 'libc++'
  }
end