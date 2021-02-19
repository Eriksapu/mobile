import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<Color> colors = [
  Colors.red,
  Colors.amber,
  Colors.lightGreenAccent,
  Colors.lightBlue,
  Colors.pink,
  Colors.deepOrange,
];
final days = [
  'Senin',
  'Selasa',
  'Rabu',
  'Kamis',
  'Jumat',
  'Sabtu',
];

class Ketiga extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Flutter',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('ListView'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        height: 150,
                        width: 200,
                        child: Card(
                          color: Colors.blueGrey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              new SvgPicture.asset(
                                'assets/icons/hamburger.svg',
                                height: 100,
                                width: 100,
                                allowDrawingOutsideViewBox: true,
                              ),
                              new Text('Hamburger',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        height: 150,
                        width: 200,
                        child: Card(
                          color: Colors.blueGrey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              new SvgPicture.asset(
                                'assets/icons/pancake.svg',
                                height: 100,
                                width: 100,
                                allowDrawingOutsideViewBox: true,
                              ),
                              new Text('Pancaku',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                new Center(
                  child: Text('List Menu',
                      style: TextStyle(fontSize: 20, color: Colors.black)),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  height: 240,
                  width: 400,
                  margin: EdgeInsets.all(6),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: colors.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 180,
                          margin: EdgeInsets.all(6),
                          child: Card(
                            color: colors[index],
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Center(
                                  child: Text(days[index],
                                      style: TextStyle(fontSize: 20)),
                                ),
                                SvgPicture.asset(
                                  'assets/icons/3.svg',
                                  height: 140,
                                  width: 150,
                                  alignment: Alignment.bottomCenter,
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                Container(
                  height: 100,
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: List.generate(2, (index) {
                      return Container(
                        child: Card(
                          color: Colors.lightGreenAccent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset(
                                'assets/icons/4.svg',
                                height: 150,
                                width: 150,
                                alignment: Alignment.topCenter,
                              )
                            ],
                          ),
                        ),
                      );
                    }),
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
