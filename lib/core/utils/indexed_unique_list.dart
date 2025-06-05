class IndexedUniqueList<T> {
  final int maxSize;
  final List<T> _items = [];

  IndexedUniqueList(this.maxSize);

  bool add(T item) {
    if (_items.contains(item)) return false; // уникальность
    if (_items.length >= maxSize) return false; // ограничение размера
    _items.add(item);
    return true;
  }

  bool remove(T item) {
    return _items.remove(item);
  }

  bool contains(T item) {
    return _items.contains(item);
  }

  T operator [](int index) => _items[index];

  int get length => _items.length;

  List<T> get items => List.unmodifiable(_items);

  @override
  String toString() => _items.toString();
}
