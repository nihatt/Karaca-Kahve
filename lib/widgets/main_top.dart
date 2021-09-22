// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainTop extends StatelessWidget {
  const MainTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 70, 0, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            children: [
              Container(
                height: 50,
                child: Image.network(
                    'https://seeklogo.com/images/K/karaca-porselen-logo-C2793EC1DD-seeklogo.com.png'),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 20)),
          Text(
            'EVİNDE KOLAYCA İÇECEĞİNİ HAZIRLA !',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            'Hangi içecek türü sizi anlatıyor? favori makineni seç',
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
