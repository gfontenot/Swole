import UIKit

final class ApplicationWindow: UIWindow {
  convenience init(controller: ApplicationController) {
    self.init(frame: UIScreen.main.bounds)
    backgroundColor = UIColor.white
    rootViewController = ApplicationViewController(controller: controller)
  }
}
