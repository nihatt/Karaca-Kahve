// ignore_for_file: prefer_const_constructors, iterable_contains_unrelated_type, avoid_print

import 'package:flutter/material.dart';
import 'package:kahvesecim/classes/product.dart';
import 'package:kahvesecim/models/category_design.dart';
import 'package:kahvesecim/models/product_design.dart';
import '../data/data.dart';

class CategoriesSelect extends StatefulWidget {
  @override
  State<CategoriesSelect> createState() => _CategoriesSelectState();
}

class _CategoriesSelectState extends State<CategoriesSelect> {
  List categoriestoshow = ProductCats;
  List<Product> newproducts = Products;
  void search(String id) {
    setState(() {
      if (id == "1") {
        newproducts = Products;
      } else if (id == "2") {
        newproducts =
            Products.where((element) => element.productId == "2").toList();
      } else if (id == "3") {
        newproducts =
            Products.where((element) => element.productId == "3").toList();
      } else if (id == "4") {
        newproducts =
            Products.where((element) => element.productId == "4").toList();
      } else if (id == "5") {
        newproducts =
            Products.where((element) => element.productId == "5").toList();
      } else if (id == "6") {
        newproducts =
            Products.where((element) => element.productId == "6").toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 130,
          child: ListView.builder(
            padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
            scrollDirection: Axis.horizontal,
            itemCount: categoriestoshow.length,
            itemBuilder: (ctx, index) {
              return InkWell(
                onTap: () {
                  search(ProductCats[index].catId);
                },
                child: CategoriesScreen(ProductCats[index].catTitle,
                    ProductCats[index].catImgUrl, ProductCats[index].catId),
              );
            },
          ),
        ),
        SizedBox(
          height: 440,
          child: GridView(
            padding: EdgeInsets.all(20),
            children: newproducts
                .map((element) => ProductDesign(
                    element.productTtitle,
                    element.productUrl,
                    element.productPrice,
                    element.productDescription,
                    element.productId,
                    element.marka,
                    element.modelno,
                    element.barkod,
                    element.renk,
                    element.urungrubu,
                    element.mensei,
                    element.malzemetur))
                .toList(),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 0.70,
                crossAxisSpacing: 55,
                mainAxisSpacing: 20),
          ),
        )
      ],
    );
  }
}
