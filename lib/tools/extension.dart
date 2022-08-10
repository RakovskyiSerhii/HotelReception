extension ListExtension<T> on List<T> {
  List<OUT> mapIndexed<OUT>(OUT Function(int index, T value) predict) {
    return asMap()
        .map((key, value) => MapEntry(key, predict(key, value)))
        .values
        .toList();
  }
}
