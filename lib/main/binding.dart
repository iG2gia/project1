import 'package:app0/Controllers/cart_productController.dart';
import 'package:app0/Controllers/product_price_controller.dart';
import 'package:get/get.dart';

import '../Controllers/MenController.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductPriceController>(() => ProductPriceController());
    Get.lazyPut<CartController>(() => CartController());
    Get.lazyPut<FavoriteController>(() => FavoriteController());
  }
}
