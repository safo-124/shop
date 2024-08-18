import 'package:flutter/material.dart';
import 'package:shop/common/utils/enums.dart';

class HomeTabNotifier with ChangeNotifier {
  QueryType queryType = QueryType.all;
  String _index = 'All';

  String get index => _index;

  void setIndex(String index) {
    _index = index;

    switch (index) {
      case 'All':
        setQueryType(QueryType.all);
        break;
      case 'Popular':
        setQueryType(QueryType.popular);
        break;
      case 'Traditional':
        setQueryType(QueryType.traditional);
        break;
      case 'Men':
        setQueryType(QueryType.men);
        break;
      case 'Women':
        setQueryType(QueryType.women);
        break;
      case 'Kids':
        setQueryType(QueryType.kids);
        break;
      default:
        setQueryType(QueryType.all);
    }
    notifyListeners();
  }

  void setQueryType(QueryType q) {
    queryType = q;
    print(q.name);
  }
}
