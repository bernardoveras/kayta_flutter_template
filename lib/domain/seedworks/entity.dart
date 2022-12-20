import '../value_objects/guid.dart';

/// Seedwork that entities that have Id inherit.
abstract class Entity {
  late Guid _id;
  Guid get id => _id;

  Entity() {
    generateNewIdentifier();
  }

  /// Change the entity id.
  void changeIdentifier(String id) => _id = Guid(id);

  /// Generates a random guid and changes the entity id.
  void generateNewIdentifier() => _id = Guid.generate();
}
