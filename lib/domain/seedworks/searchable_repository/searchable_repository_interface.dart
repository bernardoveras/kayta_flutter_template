import 'package:result_dart/result_dart.dart';

import '../entity.dart';
import 'search_input.dart';

abstract class ISearchableRepositoryInterface<TEntity extends Entity> {
  AsyncResult<List<TEntity>, Exception> search(SearchInput input);
}
