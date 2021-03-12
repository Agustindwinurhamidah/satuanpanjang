import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Result extends StatelessWidget {
  const Result({
    Key key,
    @required this.result,
  }) : super(key: key);

  final double result;
  
  @override
  Widget build(BuildContext context) {
    return
      Container(
        margin: EdgeInsets.only(top: 15,bottom: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hasil",style: TextStyle(fontSize: 20),),//menampilkan text hasil 
            Text(
              result.toString(),
              style: TextStyle(fontSize: 30),
            )
         ],
      ),  
    );
  }
}
