import 'package:flutter/material.dart';

class PaginationController extends ChangeNotifier {
  final ScrollController scrollController = ScrollController();
  int page = 1;
  // bool _loading = false;

  PaginationController() {
    scrollController.addListener(scrollListener);
  }

  void scrollListener() {
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      print('Este es el fin');
    }
  }


  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
