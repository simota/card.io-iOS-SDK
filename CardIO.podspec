Pod::Spec.new do |spec|
  spec.name             = 'CardIO'
  spec.version          = '5.4.1'
  spec.license          = { type: 'MIT', file: 'LICENSE.md' }
  spec.homepage         = 'https://www.card.io'
  spec.authors          = { 'CardIO' => 'support@paypal.com' }
  spec.summary          = 'Credit card scanning for mobile apps'
  spec.social_media_url = 'https://twitter.com/cardio'
  spec.static_framework = true
  spec.source           = { :git => 'https://github.com/simota/card.io-iOS-SDK.git', :tag => "#{spec.version}" }
  spec.platform         = :ios, '11.0'
  spec.ios.deployment_target = '11.0'
  spec.requires_arc     = true
  spec.source_files     = 'CardIO/*.{h,m}'
  spec.public_header_files     = 'CardIO/*.h'
  spec.frameworks       = 'Accelerate', 'AVFoundation', 'AudioToolbox', 'CoreMedia', 'CoreVideo', 'MobileCoreServices', 'OpenGLES', 'QuartzCore', 'Security', 'UIKit'
  spec.libraries        = 'c++'
  spec.vendored_libraries = 'CardIO/libCardIO.a', 'CardIO/libopencv_core.a', 'CardIO/libopencv_imgproc.a'
  spec.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }
end
