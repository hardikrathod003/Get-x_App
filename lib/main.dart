import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/views/cart_page.dart';
import 'package:getx_app/views/homepage.dart';

void main() {
  runApp(GetMaterialApp(
    getPages: [
      GetPage(
        name: '/',
        page: () => Homepage(),
      ),
      GetPage(
        name: "/Cart_page",
        page: () => Cart_page(),
      ),
    ],
  ));
}
