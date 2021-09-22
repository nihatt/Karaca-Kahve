import 'package:flutter/material.dart';
import 'package:kahvesecim/details_page.dart';
import 'package:kahvesecim/widgets/image_modal.dart';

class ProductDesign extends StatelessWidget {
  @required
  final String productTitle;
  @required
  String productUrl;
  double productPrice;
  String productDescription;
  String productId;
  String marka;
  String modelno;
  String barkod;
  String renk;
  String malzemetur;
  String urungrubu;
  String mensei;
  ProductDesign(
      this.productTitle,
      this.productUrl,
      this.productPrice,
      this.productDescription,
      this.productId,
      this.barkod,
      this.malzemetur,
      this.marka,
      this.mensei,
      this.modelno,
      this.renk,
      this.urungrubu);
  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) {
          return DetailsPage(
              productTitle,
              productUrl,
              productPrice,
              productDescription,
              productId,
              marka,
              modelno,
              barkod,
              renk,
              malzemetur,
              urungrubu,
              mensei);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(
          onTap: () {
            selectCategory(context);
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
            height: 150,
            width: 130,
            child: Image.network(
              productUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          productTitle,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
        ),
      ],
    );
  }
}
