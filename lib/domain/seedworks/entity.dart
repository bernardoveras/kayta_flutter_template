import '../value_objects/guid.dart';

abstract class Entity {
  late Guid _id;
  Guid get id => _id;

  Entity() {
    generateNewIdentifier();
  }

  /// Altera o id da entidade.
  void changeIdentifier(String id) => _id = Guid(id);

  /// Gera um novo guid e altera o id da entidade.
  void generateNewIdentifier() => _id = Guid.generate();
}
