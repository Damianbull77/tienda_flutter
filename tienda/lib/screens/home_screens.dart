import 'package:flutter/material.dart';
import 'package:tienda/products.dart';

class HomeScreens extends StatelessWidget {
  final String category;

  const HomeScreens({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final products = Products.getProductsPerCategory(category);

    return Scaffold(
        body: ListView.builder(
          itemCount: products.length, itemBuilder: (BuildContext context, int index) { 
            final product = products[index];
            return _ProductsCard(context, product.name, product.imgUrl, product.price);
           },
        )
    );
  }

  // ignore: non_constant_identifier_names
  Widget _ProductsCard(
      BuildContext context, String name, String imagUrl, double price) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 125,
        child: Card(
          color: const Color.fromARGB(255, 36, 35, 35),
          child: Row(
            children: <Widget>[
              SizedBox(
                height: 125,
                width: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(imagUrl, fit: BoxFit.cover),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style:
                        const TextStyle(fontSize: 20, fontFamily: "Quicksand", color: Colors.white),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                      height: 2,
                      width: 80,
                      color: const Color.fromARGB(255, 229, 245, 6)),
                  Text(
                    "\$${price.toStringAsFixed(2)}",
                    style:
                        const TextStyle(fontSize: 20, fontFamily: "Quicksand", color: Color.fromARGB(255, 73, 170, 122)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
