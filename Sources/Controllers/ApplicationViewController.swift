import UIKit

final class ApplicationViewController: UIViewController {
  let controller: ApplicationController
  var activeViewController: UIViewController?

  var viewModel: ApplicationViewModel {
    return controller.viewModel
  }

  init(controller: ApplicationController) {
    self.controller = controller
    super.init(nibName: .none, bundle: .none)
  }

  required init(coder: NSCoder) {
    fatalError()
  }
}

// MARK: View Lifecycle
extension ApplicationViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    let initialViewController = WorkoutsViewController(viewModel: viewModel.workoutsViewModel)

    changeActive(viewController: initialViewController)
  }
}

private extension ApplicationViewController {
  func changeActive(viewController: UIViewController) {
    if let activeViewController = activeViewController {
      activeViewController.willMove(toParentViewController: .none)
      activeViewController.view.removeFromSuperview()
      activeViewController.removeFromParentViewController()
    }

    viewController.willMove(toParentViewController: self)
    addChildViewController(viewController)
    view.addSubview(viewController.view)
    viewController.didMove(toParentViewController: self)

    activeViewController = viewController
  }
}
