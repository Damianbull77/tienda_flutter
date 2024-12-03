class Product {
  final String name;
  final String imgUrl;
  final double price;

  Product({required this.name, required this.imgUrl, required this.price});
}

class Products {
  static List<Product> getProductsPerCategory(String categori) {
    if (categori == "Hogar") {
      return [
        Product(name: "Televiso", imgUrl: "imgUrl", price: 10000),
        Product(name: "Nevera", imgUrl: "imgUrl", price: 2000),
        Product(name: "Lavadora", imgUrl: "imgUrl", price: 600),
        Product(name: "Plancha", imgUrl: "imgUrl", price: 300)
      ];
    } else if (categori == "Moda") {
      return [
        Product(name: "Camisa", imgUrl: "imgUrl", price: 100),
        Product(name: "Pantalon", imgUrl: "imgUrl", price: 250),
        Product(name: "Saco", imgUrl: "imgUrl", price: 50),
        Product(name: "Chaqueta", imgUrl: "imgUrl", price: 500)
      ];
    } else if (categori == "Hogar") {
      return [
        Product(name: "Sofa", imgUrl: "imgUrl", price: 3000),
        Product(name: "Cama", imgUrl: "imgUrl", price: 2000),
        Product(name: "Comedor", imgUrl: "imgUrl", price: 5000),
        Product(name: "Mesa de Centro", imgUrl: "imgUrl", price: 300),
      ];
    } else {
      return [];
    }
  }
}
