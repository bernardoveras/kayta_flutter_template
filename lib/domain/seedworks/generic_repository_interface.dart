import 'package:result_dart/result_dart.dart';

import '../value_objects/value_objects.dart';
import 'seedworks.dart';

abstract class IGenericRepositoryInterface<TEntity extends Entity> extends IRepositoryInterface {
  AsyncResult<TEntity, Exception> find(Guid id);
  AsyncResult<TEntity, Exception> insert(TEntity entity);
  AsyncResult<bool, Exception> update(TEntity entity);
  AsyncResult<bool, Exception> delete(Guid id);
}
