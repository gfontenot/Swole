import UIKit

final class WorkoutsViewController: UITableViewController {
  let viewModel: CollectionViewModel<Workout>

  init(viewModel: CollectionViewModel<Workout>) {
    self.viewModel = viewModel
    super.init(nibName: .none, bundle: .none)
  }

  required init(coder: NSCoder) {
    fatalError()
  }
}
