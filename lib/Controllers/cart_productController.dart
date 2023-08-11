import 'package:app0/Controllers/product_price_controller.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final ProductPriceController productPriceController =
      Get.find<ProductPriceController>();
  var cartProducts = [].obs;

  var i;

  void removeFromCart(dynamic product) {
    cartProducts.remove(product);
    productPriceController.numOfItems.value = 1;

    update();
  }

  void addToCart(dynamic product) {
    cartProducts.add(product);
    update();
  }
}
