import 'search_order.dart';

class SearchInput {
  final int page;
  final int perPage;
  final String filter;
  final String orderBy;
  final SearchOrder order;

  SearchInput({
    required this.page,
    required this.perPage,
    required this.filter,
    required this.orderBy,
    required this.order,
  });
}