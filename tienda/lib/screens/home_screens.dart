import 'package:flutter/material.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      _RecipesCard(context, "chaqueta", "urlPendiente", 20000),
      _RecipesCard(context, "pantalon", "urlPendiente", 10000)
    ]));
  }

  // ignore: non_constant_identifier_names
  Widget _RecipesCard(
      BuildContext context, String nameProducto, String url, double price) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 125,
        child: Card(
          color: const Color.fromARGB(18, 213, 13, 163),
          child: Row(
            children: <Widget>[
              Container(
                height: 125,
                width: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(url, fit: BoxFit.cover),
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
                    nameProducto,
                    style:
                        const TextStyle(fontSize: 20, fontFamily: "Quicksand"),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                      height: 2,
                      width: 80,
                      color: const Color.fromARGB(255, 19, 9, 162)),
                  Text(
                    "\$${price.toStringAsFixed(2)}",
                    style:
                        const TextStyle(fontSize: 20, fontFamily: "Quicksand"),
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
