// ignore: camel_case_types
class item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  item({this.id, this.name, this.desc, this.price, this.color, this.image});
}

final products = {
  item(
      id: "Vrutik01",
      name: "iphone 12 pro max",
      desc: "Apple 12th generation",
      price: 9999,
      color: "#3550a",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc")
};
