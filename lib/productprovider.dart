import 'package:flutter/cupertino.dart';
import 'package:furni/cartmodel.dart';
import 'package:furni/product.dart';


class ProductProvider with ChangeNotifier {
  List<Product> Feature = [];
  List<CartModel> cartModelList = [];
  late CartModel cartModel;

  get notificationList => null;
  void getCartData({
    required String name,
    required String image,
    required int quentity,
    required double price,
  }) {
    cartModel =
        CartModel(name: name, image: image, price: price, quentity: quentity);
    cartModelList.add(cartModel);
  }
}

List<CartModel> get getCartModelList {
  return List.from(getCartModelList);
}

int get CartModelListLength {
  return getCartModelList.length;
}
