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
      return page += 1;
    }
    return page;
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}




  // // Define una función para cargar más datos
  // void loadMoreData(Function nextPage) {
  //   if (!_loading &&
  //       scrollController.position.pixels ==
  //           scrollController.position.maxScrollExtent) {
  //     // Indica que se está cargando para evitar múltiples llamadas simultáneas
  //     _loading = true;

  //     // Llama a la función nextPage para cargar la siguiente página de datos
  //     nextPage().then((_) {
  //       // Marca la carga como completada una vez que se obtienen los nuevos datos
  //       _loading = false;
  //     });
  //   }
  // }