import 'package:get/get.dart';

class ProductPriceController extends GetxController {
  var numOfItems = 1;
  var total = 0.0.obs;

  void incrementN() {
    numOfItems++;
    update();
  }

  void decrementN() {
    if (numOfItems > 1) {
      numOfItems--;
    }
    update();
  }

  void decrementCalcilator(dynamic product) {
    total.value = total.value - product.price;
    update();
  }

  void incrementCalcilator(dynamic product) {
    total.value = total.value + product.price;
    update();
  }

  void addToCartCalculator(dynamic product) {
    total.value = total.value + (numOfItems * product.price);
    update();
  }

  void removefromCartCalculator(dynamic product) {
    total.value = total.value - (numOfItems * product.price);
    update();
  }
}
