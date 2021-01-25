import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
  // GMS Services may have to go here
  NSString* mapsApiKey = [[NSProcessInfo processInfo] environment][@"MAPS_API_KEY"];
    if ([mapsApiKey length] == 0) {
      mapsApiKey = @"YOUR KEY HERE";
    }
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
