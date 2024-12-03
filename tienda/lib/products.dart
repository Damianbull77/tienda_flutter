class Product {
  final String name;
  final String imgUrl;
  final double price;

  Product({required this.name, required this.imgUrl, required this.price});
}

class Products {
  static List<Product> getProductsPerCategory(String categori) {
    if (categori == "Electrodomesticos") {
      return [
        Product(name: "Televisor", imgUrl: "https://cdn.pixabay.com/photo/2016/11/21/12/10/tv-1844964_1280.jpg", price: 10000),
        Product(name: "Nevera", imgUrl: "https://cdn.pixabay.com/photo/2021/05/19/16/41/hitachi-multi-door-refrigerator-6266613_1280.jpg", price: 2000),
        Product(name: "Lavadora", imgUrl: "https://cdn.pixabay.com/photo/2020/07/20/15/17/washing-machine-5423359_1280.jpg", price: 600),
        Product(name: "Plancha", imgUrl: "https://cdn.pixabay.com/photo/2011/04/03/13/31/iron-6046_960_720.jpg", price: 300)
      ];
    } else if (categori == "Moda") {
      return [
        Product(name: "Camisa", imgUrl: "https://cdn.pixabay.com/photo/2016/04/19/16/28/model-1338993_1280.jpg", price: 100),
        Product(name: "Pantalon", imgUrl: "https://cdn.pixabay.com/photo/2016/03/03/17/34/jeans-1234687_960_720.jpg", price: 250),
        Product(name: "Saco", imgUrl: "https://media.istockphoto.com/id/2154617864/es/foto/chaquetas-de-blazer-de-moda-aisladas-sobre-fondo-blanco.jpg?s=2048x2048&w=is&k=20&c=opd_ovlb0lQ5e0iRZgpUgVGBSq_mSbhMbCXwKvPz9B0=", price: 50),
        Product(name: "Chaqueta", imgUrl: "https://cdn.pixabay.com/photo/2017/08/01/11/48/woman-2564660_1280.jpg", price: 500)
      ];
    } else if (categori == "Hogar") {
      return [
        Product(name: "Sofa", imgUrl: "https://cdn.pixabay.com/photo/2015/12/13/00/37/love-seat-1090458_1280.jpg", price: 3000),
        Product(name: "Cama", imgUrl: "https://cdn.pixabay.com/photo/2014/07/10/17/17/bedroom-389254_960_720.jpg", price: 2000),
        Product(name: "Comedor", imgUrl: "https://cdn.pixabay.com/photo/2021/09/20/19/00/dinning-table-6641707_1280.jpg", price: 5000),
        Product(name: "Mesa de Centro", imgUrl: "https://cdn.pixabay.com/photo/2021/04/17/04/56/sofa-6185021_1280.jpg", price: 300),
      ];
    } else {
      return [];
    }
  }
}
