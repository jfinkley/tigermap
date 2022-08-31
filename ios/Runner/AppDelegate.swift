import UIKit
import Flutter
import GoogleMaps
import UIKit
import CoreLocation

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
  // GMS Services may have to go here
  //NSString* mapsApiKey = [[NSProcessInfo processInfo] environment][@"MAPS_API_KEY"];
    //if ([mapsApiKey length] == 0) {
     // mapsApiKey = @"MAPS_API_KEY";
    //}
    //[GMSServices provideAPIKey:mapsApiKey];
      // Register Flutter plugins.
      //[GeneratedPluginRegistrant registerWithRegistry:self];
    GeneratedPluginRegistrant.register(with: self)
      let locationManager = CLLocationManager()
      locationManager.requestWhenInUseAuthorization()
      
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
