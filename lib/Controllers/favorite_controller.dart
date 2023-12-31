import 'package:get/get.dart';

class FavoriteController extends GetxController {
  var favoriteProducts = <dynamic>[].obs;

  void addToFavorites(dynamic product) {
    favoriteProducts.add(product);
    update();
  }

  void removeFromFavorites(dynamic product) {
    favoriteProducts.remove(product);
    update();
  }

  void favoriteadder(dynamic product) {
    if (favoriteProducts.contains(product)) {
      favoriteProducts.remove(product);
    } else {
      favoriteProducts.add(product);
    }
    update();
  }
}
