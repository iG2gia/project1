import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../Controllers/cart_productController.dart';
import '../Controllers/product_price_controller.dart';
import '../kids/detail/details_screen.dart';
import '../kids/kids_products_list.dart';
import '../men/detail/details_screen.dart';
import '../men/men_products_list.dart';
import '../women/detail/details_screen.dart';
import '../women/women_products_list.dart';
import 'item_cart.dart';

class Cartpage extends StatefulWidget {
  @override
  _CartpageState createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  final cartController =
      Get.find<CartController>(); // Initializing cart controller
  final productpricecontroller = Get.find<
      ProductPriceController>(); // Initializing product price controller

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            FontAwesomeIcons.arrowLeft,
            color: Colors.black,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        elevation: 0,
        backgroundColor: Color(0xFFFCFCFC),
        centerTitle: true,
        title: Text(
          'Cart Page',
          style: TextStyle(color: Color(0xFFFCFCFC), fontSize: 18),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: GetBuilder<ProductPriceController>(
        builder: (controller) {
          return Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 100,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        if (cartController.cartProducts.isNotEmpty)
                          ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: cartController.cartProducts.length,
                            itemBuilder: (context, index) {
                              var product = cartController.cartProducts[index];
                              return Dismissible(
                                key: UniqueKey(),
                                onDismissed: (DismissDirection direction) {
                                  cartController.removeItem(product);
                                  productpricecontroller
                                      .removefromCartCalculator(product);
                                },
                                background: Container(
                                  color: Colors.red,
                                  child: const Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 20.0),
                                      child: Icon(
                                        FontAwesomeIcons.trash,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                child: ItemCard(
                                  product: product,
                                  press: () {
                                    if (products.contains(product)) {
                                      Get.to(
                                          DetailsScreenwomen(product: product));
                                    } else if (productsKids.contains(product)) {
                                      Get.to(
                                          DetailsScreenkids(product: product));
                                    } else if (productsMan.contains(product)) {
                                      Get.to(
                                          DetailsScreenman(product: product));
                                    }
                                  },
                                ),
                              );
                            },
                          ),
                        if (cartController.cartProducts.isEmpty)
                          Column(
                            children: [
                              Container(
                                width: 200,
                                height: 200,
                                child: Image.asset('images/shopping-cart.png'),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'The Cart is Empty',
                                style: TextStyle(
                                    fontSize: 20.0, fontFamily: 'fasthand'),
                              )
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 210, // Adjust this value based on your design
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5), // Shadow color
                        spreadRadius: 2, // Spread radius
                        blurRadius: 5, // Blur radius
                        offset: Offset(0, 3), // Offset in the (x, y) direction
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Discount Code',
                                  suffixIcon: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Apply',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                      )
                                    ],
                                  ),
                                  suffixIconColor: Color(0xFFFCFCFC),
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 20),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(28),
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                    ),
                                    gapPadding: 10,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text('Subtotal:'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Text('\$${productpricecontroller.total}'),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text('Total:'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Text('\$${productpricecontroller.total}'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Place your checkout logic here
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Colors.black, // Change to your desired color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  20), // Adjust the radius as needed
                            ),
                            fixedSize: Size(400,
                                50), // Change the width and height as needed
                          ),
                          child: Text('Checkout'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
      backgroundColor: Color(0xFFFCFCFC),
    ));
  }
}
