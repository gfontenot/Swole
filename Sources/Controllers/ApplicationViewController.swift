import UIKit

final class ApplicationViewController: UIViewController {
  let controller: ApplicationController

  init(controller: ApplicationController) {
    self.controller = controller
    super.init(nibName: .none, bundle: .none)
  }

  required init(coder: NSCoder) {
    fatalError()
  }
}
