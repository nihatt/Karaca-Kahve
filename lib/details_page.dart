// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:kahvesecim/classes/product.dart';
import 'package:kahvesecim/data/data.dart';
import 'package:kahvesecim/widgets/image_modal.dart';

class DetailsPage extends StatefulWidget {
  String detail_title;
  String detail_url;
  double detail_price;
  String detail_description;
  String detail_id;
  String detail_marka;
  String detail_modelno;
  String detail_barkod;
  String detail_renk;
  String detail_urungrubu;
  String detail_mensei;
  String detail_malzeme;

  DetailsPage(
      this.detail_title,
      this.detail_url,
      this.detail_price,
      this.detail_description,
      this.detail_id,
      this.detail_barkod,
      this.detail_malzeme,
      this.detail_marka,
      this.detail_mensei,
      this.detail_modelno,
      this.detail_renk,
      this.detail_urungrubu);
  List<Product> returnedproducts = Products;
  List<Product> searchproduct = Products;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  void search() {
    setState(() {
      if (widget.detail_id == "1") {
        widget.searchproduct = Products;
      } else if (widget.detail_id == "2") {
        widget.searchproduct =
            Products.where((element) => element.productId == "2").toList();
        int item = widget.searchproduct.indexWhere(
            (element) => element.productTtitle.contains(widget.detail_title));
        widget.searchproduct.insert(0, widget.searchproduct.removeAt(item));
      } else if (widget.detail_id == "3") {
        widget.searchproduct =
            Products.where((element) => element.productId == "3").toList();
        int item = widget.searchproduct.indexWhere(
            (element) => element.productTtitle.contains(widget.detail_title));
        widget.searchproduct.insert(0, widget.searchproduct.removeAt(item));
      } else if (widget.detail_id == "4") {
        widget.searchproduct =
            Products.where((element) => element.productId == "4").toList();
        int item = widget.searchproduct.indexWhere(
            (element) => element.productTtitle.contains(widget.detail_title));
        widget.searchproduct.insert(0, widget.searchproduct.removeAt(item));
      } else if (widget.detail_id == "5") {
        widget.searchproduct =
            Products.where((element) => element.productId == "5").toList();
        int item = widget.searchproduct.indexWhere(
            (element) => element.productTtitle.contains(widget.detail_title));
        widget.searchproduct.insert(0, widget.searchproduct.removeAt(item));
      } else if (widget.detail_id == "6") {
        widget.searchproduct =
            Products.where((element) => element.productId == "6").toList();
        int item = widget.searchproduct.indexWhere(
            (element) => element.productTtitle.contains(widget.detail_title));
        widget.searchproduct.insert(0, widget.searchproduct.removeAt(item));
      }
      ;
    });
  }

  void arttir() {
    setState(() {
      if (index == widget.searchproduct.length - 1) {
        index = 0;
      } else {
        index += 1;
      }
    });
  }

  void azalt() {
    setState(() {
      if (index == 0) {
        index = widget.searchproduct.length - 1;
      } else {
        index -= 1;
      }
    });
  }

  int index = 0;
  @override
  Widget build(BuildContext context) {
    search();
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1533035353720-f1c6a75cd8ab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHx8&w=1000&q=80'),
              fit: BoxFit.cover)),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 60, 0, 20),
              child: Container(
                width: 80,
                child: Column(
                  children: [
                    FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: Colors.grey[350],
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.skip_previous),
                          Text("Geri")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 5),
                child: Container(
                  height: 225,
                  width: double.infinity,
                  child: InkWell(
                    onTap: () async {
                      await showDialog(
                          context: context,
                          builder: (_) => ImageDialog(
                              widget.searchproduct[index].productUrl));
                    },
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.network(
                            widget.searchproduct[index].productUrl)),
                  ),
                )),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
              child: Text(
                widget.searchproduct[index].productTtitle,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 130,
                child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Text(
                      widget.searchproduct[index].productDescription,
                      style: TextStyle(),
                    )),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: EdgeInsets.all(0),
                  child: Table(
                    defaultColumnWidth: FixedColumnWidth(0),
                    children: [
                      TableRow(
                          decoration: BoxDecoration(color: Colors.grey[350]),
                          children: [
                            Column(children: [
                              Text(
                                'Marka',
                              )
                            ]),
                            Column(children: [
                              Text(
                                widget.searchproduct[index].marka,
                              )
                            ]),
                          ]),
                      TableRow(children: [
                        Column(children: [Text('Model No')]),
                        Column(children: [
                          Text(widget.searchproduct[index].modelno)
                        ]),
                      ]),
                      TableRow(
                          decoration: BoxDecoration(color: Colors.grey[350]),
                          children: [
                            Column(children: [Text('Barkod')]),
                            Column(children: [
                              Text(widget.searchproduct[index].barkod)
                            ]),
                          ]),
                      TableRow(children: [
                        Column(children: [Text('Renk')]),
                        Column(
                            children: [Text(widget.searchproduct[index].renk)]),
                      ]),
                      TableRow(
                          decoration: BoxDecoration(color: Colors.grey[350]),
                          children: [
                            Column(children: [Text('Ürün Grubu')]),
                            Column(children: [
                              Text(widget.searchproduct[index].urungrubu)
                            ]),
                          ]),
                      TableRow(children: [
                        Column(children: [Text('Menşei')]),
                        Column(children: [
                          Text(widget.searchproduct[index].mensei)
                        ]),
                      ]),
                      TableRow(
                          decoration: BoxDecoration(color: Colors.grey[350]),
                          children: [
                            Column(children: [Text('Malzeme Türü/Garanti')]),
                            Column(children: [
                              Text(widget.searchproduct[index].malzemetur)
                            ]),
                          ]),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () => {azalt()},
                color: Colors.grey[350],
                padding: EdgeInsets.all(10.0),
                child: Row(
                  // Replace with a Row for horizontal icon + text
                  children: <Widget>[Icon(Icons.skip_previous), Text("Önceki")],
                ),
              ),
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {
                  search();
                  arttir();
                },
                color: Colors.grey[350],
                padding: EdgeInsets.all(10.0),
                child: Row(
                  // Replace with a Row for horizontal icon + text
                  children: <Widget>[Text("Sonraki"), Icon(Icons.skip_next)],
                ),
              ),
            ],
          ),
        )
      ]),
    ));
  }
}
