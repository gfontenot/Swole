struct ApplicationViewModel {
  var workoutsViewModel: CollectionViewModel<Workout> {
    return .init(models: [])
  }
}
