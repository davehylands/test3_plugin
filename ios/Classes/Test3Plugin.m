#import "Test3Plugin.h"
#if __has_include(<test3_plugin/test3_plugin-Swift.h>)
#import <test3_plugin/test3_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "test3_plugin-Swift.h"
#endif

@implementation Test3Plugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTest3Plugin registerWithRegistrar:registrar];
}
@end
