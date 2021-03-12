import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Input extends StatelessWidget{
  const Input({
    Key key,
    @required this.satuan,
  }) : super(key: key);
  
  final TextEditingController satuan;
  @override
Widget build(BuildContext context){
  return TextFormField(
    decoration:InputDecoration(hintText: "Masukkan angka"),//jika kita belom input angka maka terdapat tulisan masukkan angka jika sudah input maka tulisan masukkan angka akan hilang
    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
    controller: satuan,
    keyboardType: TextInputType.number,//input hanya angka
  );
}
}