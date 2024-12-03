import 'package:flutter/material.dart';
import 'package:recipe_book/screens/home_screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'hola mundo',
        home: RecipesBook());
  }
}

class RecipesBook extends StatelessWidget {
  const RecipesBook({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text(
              'Recipes App',
              style: TextStyle(color: Color.fromARGB(255, 235, 241, 55)),
            ),
            bottom: const TabBar(
                indicatorColor: Color.fromARGB(255, 232, 229, 229),
                labelColor: Color.fromARGB(255, 255, 255, 255),
                unselectedLabelColor: Color.fromARGB(255, 198, 194, 194),
                tabs: [
                  Tab(
                    icon: Icon(Icons.home),
                    text: "Home",
                  )
                ]),
          ),
          body: const TabBarView(children: [HomeScreens()])),
    );
  }
}
