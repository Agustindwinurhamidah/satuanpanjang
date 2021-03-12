import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Convert extends StatelessWidget{
  final Function konvertHandler;
  Convert({Key key, @required this.konvertHandler});
  @override
Widget build(BuildContext context){//button untuk konversi
  return Container(
    width: double.infinity,
    height: 50,// tinggi button
    child: RaisedButton(
      onPressed: konvertHandler,//konveter
      color: Colors.red,//warna button
      textColor: Colors.white,//warna text
      child: Text("Konversi Satuan Panjang"),//text
    ),
  );
}
} 