import 'package:app0/women/detail/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../women_products_list.dart';

class VacationList extends StatelessWidget {
  final List vactionList1 = [];

  VacationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < products.length; i++) {
      if (products[i].categorie == 'vacation') {
        vactionList1.add(products[i]);
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        itemCount: vactionList1.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          return ItemCard(
            product: vactionList1[index],
            press: () => Get.to(
              DetailsScreenwomen(
                product: vactionList1[index],
              ),
            ),
          );
        },
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Product product;
  final Function() press;
  ItemCard({
    required this.product,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color(0xFFF0F0F0),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Shadow color
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // Offset in the y-direction
            ),
          ],
        ),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Hero(
                tag: "${product.id}",
                child: Image.asset(product.image),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    // products is out demo list

                    product.title,

                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Text(
                  "\$${product.price}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.green),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
