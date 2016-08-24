struct CollectionViewModel<T> {
  private let models: [T]

  init(models: [T]) {
    self.models = models
  }
}
