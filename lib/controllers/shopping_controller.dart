import 'package:get/get.dart';
import 'package:getxample/models/product.dart';

class ShoppingController extends GetxController {
  var products = List<Product>().obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var serverResponse = [
      Product(
          id: 1,
          price: 30,
          productDescription: "some description about product",
          productImage: "abd",
          productName: "FirstProd"),
      Product(
          id: 2,
          price: 50,
          productDescription: "some description about product",
          productImage: "abd",
          productName: "SecProd"),
      Product(
          id: 3,
          price: 45,
          productDescription: "some description about product",
          productImage: "abd",
          productName: "ThirdProd"),
      Product(
          id: 4,
          price: 15,
          productDescription: "some description about product",
          productImage: "abd",
          productName: "FourthProd"),
      Product(
          id: 5,
          price: 29,
          productDescription: "some description about product",
          productImage: "abd",
          productName: "FifthProd"),
    ];
    products.value = serverResponse;
  }
}
