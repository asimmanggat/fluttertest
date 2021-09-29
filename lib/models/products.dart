class ProductsModel {
  static final products = [
    Products(
        id: "FG020002446",
        name: "Regular Chair",
        desc: "Yellow Regular Chair",
        price: 23000,
        image:
            "https://firebasestorage.googleapis.com/v0/b/interwoodsalesapp.appspot.com/o/FG020002446.jpg?alt=media&token=96f5756d-0a87-4f85-9ad8-ced4df093f62"),
    Products(
        id: "FG020002448",
        name: "Baby Chair",
        desc: "Yellow baby Chair",
        price: 18000,
        image:
            "https://firebasestorage.googleapis.com/v0/b/interwoodsalesapp.appspot.com/o/FG020002448.jpg?alt=media&token=f660999c-2c45-4ea9-90f4-bde8e06bb0f3"),
    Products(
        id: "FG020002458",
        name: "Yellow Casual",
        desc: "Yellow Casual Chair",
        price: 17500,
        image:
            "https://firebasestorage.googleapis.com/v0/b/interwoodsalesapp.appspot.com/o/FG020002458.jpg?alt=media&token=f660999c-2c45-4ea9-90f4-bde8e06bb0f3"),
    Products(
        id: "FG020002451",
        name: "Grill Chair",
        desc: "Fancy Grill Chair",
        price: 55000,
        image:
            "https://firebasestorage.googleapis.com/v0/b/interwoodsalesapp.appspot.com/o/FG020002451.jpg?alt=media&token=f660999c-2c45-4ea9-90f4-bde8e06bb0f3"),
    Products(
        id: "FG020002452",
        name: "Black Chair",
        desc: "Black Crystal",
        price: 28000,
        image:
            "https://firebasestorage.googleapis.com/v0/b/interwoodsalesapp.appspot.com/o/FG020002452.jpg?alt=media&token=f660999c-2c45-4ea9-90f4-bde8e06bb0f3"),
    Products(
        id: "FG020002460",
        name: "Black Mamba",
        desc: "Black Mamba",
        price: 48000,
        image:
            "https://firebasestorage.googleapis.com/v0/b/interwoodsalesapp.appspot.com/o/FG020002460.jpg?alt=media&token=96f5756d-0a87-4f85-9ad8-ced4df093f62"),
    Products(
        id: "FG020002462",
        name: "Red Racoon",
        desc: "Red Racoon Chair",
        price: 33000,
        image:
            "https://firebasestorage.googleapis.com/v0/b/interwoodsalesapp.appspot.com/o/FG020002462.jpg?alt=media&token=f660999c-2c45-4ea9-90f4-bde8e06bb0f3"),
    Products(
        id: "FG020002464",
        name: "Spring Chair",
        desc: "Black Spring Chair",
        price: 17500,
        image:
            "https://firebasestorage.googleapis.com/v0/b/interwoodsalesapp.appspot.com/o/FG020002464.jpg?alt=media&token=f660999c-2c45-4ea9-90f4-bde8e06bb0f3"),
    Products(
        id: "FG020002466",
        name: "Grill Chair",
        desc: "Fancy Grill Chair",
        price: 55000,
        image:
            "https://firebasestorage.googleapis.com/v0/b/interwoodsalesapp.appspot.com/o/FG020002466.jpg?alt=media&token=f660999c-2c45-4ea9-90f4-bde8e06bb0f3"),
    Products(
        id: "FG020002471",
        name: "Resting Sofa",
        desc: "Black Resting Sofa",
        price: 78000,
        image:
            "https://firebasestorage.googleapis.com/v0/b/interwoodsalesapp.appspot.com/o/FG020002471.jpg?alt=media&token=f660999c-2c45-4ea9-90f4-bde8e06bb0f3")
  ];
}

class Products {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String image;

  Products(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.image});
}
