import 'package:greenit_app/models/paging.dart';

class PagedList<T> {
  Paging page;
  List<T> list;

  PagedList({
    required this.page,
    required this.list,
  });
}
