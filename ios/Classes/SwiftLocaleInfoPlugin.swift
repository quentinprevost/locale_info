import Flutter
import UIKit

public class SwiftLocaleInfoPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "locale_info", binaryMessenger: registrar.messenger())
    let instance = SwiftLocaleInfoPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if call.method == "getCountryCode" {
        getCountryCode(result: result)
    }
  }
    
    
   func getCountryCode(result: @escaping FlutterResult) {
        if let countryCode = (Locale.current as NSLocale).object(forKey: .countryCode) as? String {
            result(countryCode)
        } else {
            result(nil)
        }
    }
}
