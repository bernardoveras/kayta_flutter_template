import 'package:result_dart/result_dart.dart';

import '../value_objects/value_objects.dart';
import 'seedworks.dart';

abstract class IGenericRepository<TEntity extends Entity> extends IRepository {
  AsyncResult<TEntity, Exception> find(Guid id);
  AsyncResult<TEntity, Exception> insert(TEntity entity);
  AsyncResult<bool, Exception> update(TEntity entity);
  AsyncResult<bool, Exception> delete(Guid id);
}
