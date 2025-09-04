import 'dart:ui' show Color;

class DataItems {
  final String id;
  final String name;
  final Color color;
  DataItems({required this.id, required this.name, required this.color});

  @override
  String toString() {
    return 'DataItems(id: $id, name: $name, color: $color)';
  }
}
