class Category {
  const Category({
    required this.id,
    required this.name,
  });

  final String id;
  final String name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Category && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() => 'Category(id: $id, name: $name)';
}
