import 'package:flutter/material.dart';

class Kedua extends StatelessWidget {
  List<Color> colors = [
    Colors.yellow,
    Colors.blue,
    Colors.grey,
    Colors.red,
    Colors.blueAccent,
    Colors.brown,
  ];
  List<String> nama = [
    'erik',
    'refan',
    'raden',
    'boces',
    'rafli',
    'amanda',
  ];
  List<String> nama1 = [
    'erik',
    'refan',
    'raden',
    'boces',
    'rafli',
    'amanda',
    'siti',
    'esa',
    'fahmi',
    'fatur',
    'rama',
    'bangnau',
  ];
  List<Color> warna = [
    Colors.grey,
    Colors.red,
    Colors.purple,
    Colors.red,
    Colors.blueAccent,
    Colors.brown,
    Colors.yellow,
    Colors.blue,
    Colors.grey,
    Colors.red,
    Colors.blueAccent,
    Colors.brown,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Halaman Dua'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 300,
                    width: 400,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: colors.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: new EdgeInsets.all(2),
                            width: 180,
                            height: 300,
                            color: colors[index],
                            child: Center(
                              child: Text(nama[index]),
                            ),
                          );
                        }),
                  ),
                  Container(
                    height: 280,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: colors.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: new EdgeInsets.all(2),
                            width: 150,
                            height: 100,
                            color: colors[index],
                            child: Center(
                              child: Text(nama[index]),
                            ),
                          );
                        }),
                  ),
                  Container(
                    height: 80,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: colors.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: new EdgeInsets.all(5),
                            width: 70,
                            height: 80,
                            color: colors[index],
                            child: Center(
                              child: Text(nama[index]),
                            ),
                          );
                        }),
                  ),
                  Container(
                    height: 80,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: warna.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: new EdgeInsets.all(5),
                            width: 70,
                            height: 80,
                            color: warna[index],
                            child: Center(
                              child: Text(nama1[index]),
                            ),
                          );
                        }),
                  ),
                  Container(
                    margin: EdgeInsets.all(25),
                    child: FlatButton(
                      child: Text(
                        'Masuk Halaman Ketiga',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.pushNamed(context, '/haltiga');
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(25),
                    child: FlatButton(
                      child: Text(
                        'balik ke Halaman kesatu',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.pushNamed(context, '/halsatu');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
