import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_app/controllers/cart_controller.dart';
import 'package:getx_app/controllers/counter_controller.dart';
import 'package:get/get.dart';
import '../models/product_models.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterController counterController = Get.put(CounterController());
    ProductController productController = Get.put(ProductController());

    List allproducts = [
      Product(id: 1, name: 'Laptop', category: 'Electronics', price: 60000),
      Product(id: 2, name: 'Mobile', category: 'Electronics', price: 30000),
      Product(id: 3, name: 'pants', category: 'Wearable', price: 2500),
      Product(id: 4, name: 'Shirts', category: 'Wearable', price: 1200),
      Product(id: 5, name: 'chair', category: 'furniture', price: 5000),
      Product(id: 6, name: 'table', category: 'furniture', price: 6000),
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text("Getx App"),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){
              Get.toNamed("/Cart_page");
            }, icon: Icon(Icons.shopping_bag))
          ],
        ),
        body: ListView.builder(
            itemCount: allproducts.length,
            itemBuilder: (context, i) {
              return Card(
                elevation: 3,
                child: ListTile(
                  leading: Text("${allproducts[i].id}"),
                  title: Text("${allproducts[i].name}"),
                  subtitle: Text(
                      "${allproducts[i].category} \n ${allproducts[i].price}"),
                  trailing: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      productController.addproduct(
                        product: allproducts[i],
                      );
                    },
                  ),
                ),
              );
            }));
  }
}
