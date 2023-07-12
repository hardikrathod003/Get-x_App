import 'package:get/get.dart';
import '../models/product_models.dart';

class ProductController extends GetxController {
  RxList products = [].obs;

  get totalquantity => products.length;

  get totalprice {
    int price = 0;
    for (Product product in products) {
      price = price + product.price;
    }
    return price;
  }

  void addproduct({required Product product}) {
    products.add(product);
  }

  void removeproduct({required Product product}) {
    products.remove(product);
  }
}
