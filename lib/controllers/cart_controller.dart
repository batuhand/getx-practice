import 'package:get/get.dart';
import 'package:getxample/models/product.dart';

class CartController extends GetxController {
  var cartItems = List<Product>().obs;
  int get itemCount => cartItems.length;
  double get totalPrice => cartItems.fold(0,(sum,item) => sum + item.price);

  addToCart(Product product) {
    cartItems.add(product);
  }
}
