import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First App',
      home: Scaffold(
          //backgroundColor: Colors.purpleAccent,
          appBar: AppBar(
            title: Text('Welcome to jungle'),
            backgroundColor: Colors.blue,
          ),
          body: ListView(scrollDirection: Axis.vertical, children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 200,
                  width: 140,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/img/1.jpg',
                        height: 100,
                        width: 150,
                      ),
                      Text(
                        'Burger King',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Burger biasa',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  width: 140,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/image/batagor.jpg',
                        height: 100,
                        width: 150,
                      ),
                      Text(
                        'BATAGOR',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Bata Goreng',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // kotak bisa di slide ke kiri
            Container(
              margin: EdgeInsets.all(1.0),
              height: 260.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(10.0),
                        height: 300,
                        padding: EdgeInsets.all(20.0),
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.red,
                              width: 4.0,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.redAccent[200],
                              offset: const Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10.0),
                        height: 300,
                        padding: EdgeInsets.all(20.0),
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.blue,
                              width: 4.0,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueAccent[200],
                              offset: const Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10.0),
                        height: 300,
                        padding: EdgeInsets.all(20.0),
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.purple,
                              width: 4.0,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.purpleAccent[200],
                              offset: const Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10.0),
                        height: 300,
                        padding: EdgeInsets.all(20.0),
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.cyan,
                              width: 4.0,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.cyanAccent[200],
                              offset: const Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10.0),
                        height: 300,
                        padding: EdgeInsets.all(20.0),
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.green,
                              width: 4.0,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.greenAccent[200],
                              offset: const Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //gagmbaran
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 350.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 120.0,
                    height: 170.0,
                    margin: EdgeInsets.all(8),
                    color: Colors.black,
                  ),
                  Container(
                    width: 120.0,
                    margin: EdgeInsets.all(8),
                    color: Colors.pink[50],
                  ),
                  Container(
                    width: 120.0,
                    margin: EdgeInsets.all(8),
                    color: Colors.blue,
                  ),
                  Container(
                    width: 120.0,
                    margin: EdgeInsets.all(8),
                    color: Colors.red,
                  ),
                  Container(
                    width: 120.0,
                    margin: EdgeInsets.all(8),
                    color: Colors.blueGrey,
                  ),
                ],
              ),
            ),

            //Gambar Horizontal
            Container(
              margin: EdgeInsets.all(20.0),
              height: 100.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image.asset("assets/image/batagor.jpg", width: 120),
                      Image.asset(
                        "assets/image/batagor.jpg",
                        width: 120,
                      ),
                      Image.asset(
                        "assets/image/batagor.jpg",
                        width: 120,
                      ),
                      Image.asset(
                        "assets/image/batagor.jpg",
                        width: 120,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //grid View YEllow
            Container(
              height: 200,
              child: GridView.count(
                scrollDirection: Axis.horizontal,
                crossAxisCount: 2,
                children: List.generate(50, (index) {
                  return Container(
                    child: Card(
                      color: Colors.amber,
                    ),
                  );
                }),
              ),
            )
          ])),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
