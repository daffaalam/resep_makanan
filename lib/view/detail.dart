import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {

  DetailScreen({Key key, this.nama, this.gambar, this.bahan}) : super(key: key);

  final String nama;
  final String gambar;
  final String bahan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Detail Bahan Makanan'),

            /**
             * Tambahkan tombol back pada toolbar.
             * Ketika di klik akan kembali ke halaman utama.
             */

            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context, false),
            )),
        body: Center(
            child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.network(gambar, height: 100, width: 100),
                      Text('\n' + nama + '\n'),
                      Text(bahan)
                    ]))));
  }
}
