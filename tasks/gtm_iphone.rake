task :test => 'iphone:test'

namespace :iphone do
  
  project = "iPhoneApp/iPhoneApp.xcodeproj"
  sdk = "/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator2.2.1.sdk"
  
  task :test do
    sh "xcodebuild  -project #{project} -target 'Unit Tests' -sdk #{sdk} -configuration Debug"
  end
end