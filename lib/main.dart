import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Input.dart';
import 'Result.dart';
import 'Convert.dart';
import 'Riwayat.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController satuan = new TextEditingController();

  double _inputSatuan = 0;
  double _result = 0;
  final inputController = TextEditingController();
  List <String> listItem = ["km","hm","dam","m","dm","cm","mm"];
  List <String> listItemnaik = ["km","hm","dam","m","dm","cm","mm"];
  List<String> listViewItem = List<String>();
  List<String> listViewItemnaik = List<String>();
  String _newValue = "km";
  String _newValuenaik = "km";

  void _hitungSatuan() {
    setState(() {
      _inputSatuan = double.parse(satuan.text);
     if (_newValue == "km" && _newValuenaik == "hm")
        _result = _inputSatuan * 10;
        else if (_newValue == "hm" && _newValuenaik == "dam")
        _result = _inputSatuan * 10;
         else if (_newValue == "dam" && _newValuenaik == "m")
        _result = _inputSatuan *  10;
         else if (_newValue == "m" && _newValuenaik == "dm")
        _result = _inputSatuan * 10; 
	      else if (_newValue == "dm" && _newValuenaik == "cm")
        _result = _inputSatuan * 10;
         else if (_newValue == "cm" && _newValuenaik == "mm")
        _result = _inputSatuan * 10;
        else if (_newValue == "km" && _newValuenaik == "cm")
        _result = _inputSatuan * 100000;
        else if (_newValue == "km" && _newValuenaik == "mm")
        _result = _inputSatuan * 1000000;
        else if (_newValue == "km" && _newValuenaik == "dam")
        _result = _inputSatuan * 100;
         else if (_newValue == "km" && _newValuenaik == "dm")
        _result = _inputSatuan * 10000;
        else if (_newValue == "km" && _newValuenaik == "cm")
        _result = _inputSatuan * 100000;
        else if (_newValue == "km" && _newValuenaik == "m")
        _result = _inputSatuan * 1000;
        else if (_newValue == "km" && _newValuenaik == "hm")
        _result = _inputSatuan * 10;
         else if (_newValue == "hm" && _newValuenaik == "km")
        _result = _inputSatuan / 10;
        else if (_newValue == "hm" && _newValuenaik == "m")
        _result = _inputSatuan * 100;
        else if (_newValue == "hm" && _newValuenaik == "dm")
        _result = _inputSatuan * 1000;
        else if (_newValue == "hm" && _newValuenaik == "cm")
        _result = _inputSatuan * 10000;
        else if (_newValue == "hm" && _newValuenaik == "mm")
        _result = _inputSatuan * 100000;
        else if (_newValue == "dam" && _newValuenaik == "km")
        _result = _inputSatuan / 100;
        else if (_newValue == "dam" && _newValuenaik == "hm")
        _result = _inputSatuan / 10;
        else if (_newValue == "dam" && _newValuenaik == "m")
        _result = _inputSatuan * 10;
        else if (_newValue == "dam" && _newValuenaik == "dm")
        _result = _inputSatuan / 100;
        else if (_newValue == "dam" && _newValuenaik == "cm")
        _result = _inputSatuan / 1000;
        else if (_newValue == "dam" && _newValuenaik == "mm")
        _result = _inputSatuan / 10000;
        else if (_newValue == "m" && _newValuenaik == "km")
        _result = _inputSatuan / 1000;
         else if (_newValue == "dm" && _newValuenaik == "km")
        _result = _inputSatuan / 10000;
         else if (_newValue == "dm" && _newValuenaik == "hm")
        _result = _inputSatuan / 1000;
         else if (_newValue == "dm" && _newValuenaik == "dam")
        _result = _inputSatuan / 100;
         else if (_newValue == "dm" && _newValuenaik == "m")
        _result = _inputSatuan / 10;
         else if (_newValue == "dm" && _newValuenaik == "cm")
        _result = _inputSatuan * 10;
         else if (_newValue == "dm" && _newValuenaik == "mm")
        _result = _inputSatuan / 100;
         else if (_newValue == "cm" && _newValuenaik == "km")
        _result = _inputSatuan / 100000;
         else if (_newValue == "cm" && _newValuenaik == "hm")
        _result = _inputSatuan / 10000;
         else if (_newValue == "cm" && _newValuenaik == "dam")
        _result = _inputSatuan / 1000;
         else if (_newValue == "cm" && _newValuenaik == "m")
        _result = _inputSatuan / 100;
         else if (_newValue == "cm" && _newValuenaik == "dm")
        _result = _inputSatuan / 10;
         else if (_newValue == "cm" && _newValuenaik == "mm")
        _result = _inputSatuan * 10;
         else if (_newValue == "mm" && _newValuenaik == "km")
        _result = _inputSatuan / 1000000;
         else if (_newValue == "mm" && _newValuenaik == "hm")
        _result = _inputSatuan / 100000;
         else if (_newValue == "mm" && _newValuenaik == "dam")
        _result = _inputSatuan / 10000;
         else if (_newValue == "mm" && _newValuenaik == "m")
        _result = _inputSatuan / 1000;
         else if (_newValue == "mm" && _newValuenaik == "dm")
        _result = _inputSatuan / 100;
         else if (_newValue == "mm" && _newValuenaik == "cm")
        _result = _inputSatuan / 10;   
      listViewItem.add("$_newValue - > $_newValuenaik = $_result"); 
      listViewItemnaik.add("$_newValuenaik -> $_newValue  = $_result");
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Satuan Panjang"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              Input(satuan: satuan),
              DropdownButton<String>(
                items: listItem.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                value: _newValue,
                onChanged: (String changeValue) {
                  setState(() {
                    _newValue = changeValue;
                    _hitungSatuan();
                  });
                },
              ),
              DropdownButton<String>(
                items: listItemnaik.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                value: _newValuenaik,
                onChanged: (String changeValue) {
                  setState(() {
                    _newValuenaik = changeValue;
                    //_hitungSatuan();
                  });
                },
              ),
               
              
              Result(result: _result),
              Convert(konvertHandler: _hitungSatuan),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  "Riwayat Konversi",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Expanded(
                child: Riwayat(listViewItem: listViewItem),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

