import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/controllers/cart_controller.dart';

class Cart_page extends StatefulWidget {
  const Cart_page({Key? key}) : super(key: key);

  @override
  State<Cart_page> createState() => _Cart_pageState();
}

class _Cart_pageState extends State<Cart_page> {
  ProductController productController = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Text("Total Products:- ${productController.totalquantity}"),
                  Text("Total Price:- ${productController.totalprice}"),
                ],
              ),
            ),
            Expanded(
              flex: 14,
              child: ListView.builder(
                  itemCount: productController.products.length,
                  itemBuilder: (context, i) {
                    return Card(
                      elevation: 3,
                      child: ListTile(
                        leading: Text("${productController.products[i].id}"),
                        title: Text("${productController.products[i].name}"),
                        subtitle: Text(
                            "Total products :- ${productController.products[i].category} \nTotal Price:- ${productController.products[i].name}"),
                        trailing: IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              productController.removeproduct(
                                  product: productController.products[i]);
                            });
                          },
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
