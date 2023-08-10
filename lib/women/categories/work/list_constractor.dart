import 'package:app0/women/detail/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../women_products_list.dart';

class WorkList extends StatelessWidget {
  final List worklist = [];

  WorkList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < products.length; i++) {
      if (products[i].categorie == 'night out') {
        worklist.add(products[i]);
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        itemCount: worklist.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          return ItemCard(
            product: worklist[index],
            press: () => Get.to(
              DetailsScreenwomen(
                product: worklist[index],
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                child: Image.asset(
                  product.image,
                  fit: BoxFit.contain, // Preserve aspect ratio
                ),
                tag: "${product.id}",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              product.title,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
          )
        ],
      ),
    );
  }
}
