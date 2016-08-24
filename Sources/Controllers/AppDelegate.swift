import UIKit

@UIApplicationMain
final class AppDelegate: UIResponder {
  var window: UIWindow?
}

extension AppDelegate: UIApplicationDelegate {
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = .none) -> Bool {
    if currentlyTesting() { return true }

    return true
  }
}

private extension AppDelegate {
  func currentlyTesting() -> Bool {
    let environment = ProcessInfo.processInfo.environment
    return environment.contains(key: "XCInjectBundleInto") || environment.contains(key: "XCInjectBundle")
  }
}
