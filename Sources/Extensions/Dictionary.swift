extension Dictionary {
  func contains(key: Key) -> Bool {
    return self[key] != nil
  }
}
