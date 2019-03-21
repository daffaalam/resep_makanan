import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {

  DetailScreen({Key key, this.item}) : super(key: key);
  final String item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Detail Bahan Makanan'),
          leading: IconButton(icon:Icon(Icons.arrow_back),
            onPressed:() => Navigator.pop(context, false),
          )
      ),
      body: Center(
        child: Text(item),
      ),
    );
  }
}