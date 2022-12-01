import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mobile_cart4/pages/carousel.dart';
import 'package:mobile_cart4/pages/category.dart';
import 'package:mobile_cart4/pages/category_wise_products.dart';
import 'package:mobile_cart4/pages/latest_products.dart';
import 'package:mobile_cart4/pages/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SearchBar(),
            Carousel(),
            LatestProduct(),
            Category(),
            CategoryWiseProduct(),
          ],
        ),
      ),
    );
  }
}
