import UIKit

@UIApplicationMain
final class AppDelegate: UIResponder {
  fileprivate let applicationController = ApplicationController()

  var window: UIWindow?
}

extension AppDelegate: UIApplicationDelegate {
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = .none) -> Bool {
    if currentlyTesting() { return true }

    window = createWindow()
    window?.makeKeyAndVisible()

    return true
  }
}

private extension AppDelegate {
  func createWindow() -> UIWindow {
    let window = UIWindow(frame: UIScreen.main.bounds)
    window.backgroundColor = UIColor.white
    window.rootViewController = ApplicationViewController(controller: applicationController)
    return window
  }
}

private extension AppDelegate {
  func currentlyTesting() -> Bool {
    let environment = ProcessInfo.processInfo.environment
    return environment.contains(key: "XCInjectBundleInto") || environment.contains(key: "XCInjectBundle")
  }
}
