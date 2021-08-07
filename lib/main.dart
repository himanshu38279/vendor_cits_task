import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'home page ',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  // final List<Map> myProducts =
  //     List.generate(16, (index) => {"id": index, "name": "Product $index"})
  //         .toList();

  @override
  Widget build(BuildContext context) {
    Card makeDashboardItem(String title, IconData icon) {
      return Card(
          elevation: 1.0,
          margin: new EdgeInsets.all(
              20.0), //EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 20)
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: new InkWell(
              onTap: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  SizedBox(height: 20.0),
                  Center(
                      child: Icon(
                    icon,
                    size: 40.0,
                    color: Colors.cyan[600],
                  )),
                  SizedBox(height: 10.0),
                  new Center(
                    child: new Text(title,
                        style:
                            new TextStyle(fontSize: 18.0, color: Colors.black)),
                  )
                ],
              ),
            ),
          ));
    }

    return Scaffold(
      backgroundColor: Colors.cyan[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.cancel_outlined),
        // title: Text('Home page'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.cyan[200], Colors.cyan[600]],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              height: 70,
              width: 70,
              child: CircleAvatar(
                backgroundImage: ExactAssetImage('assets/image.jpg'),
                // Optional as per your use case
                // minRadius: 30,
                // maxRadius: 70,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                "Ram Wadhwa",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                "Ramwadhwa1234@gmail.com",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 5,
            ),

            // Text("Himanshu")
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: EdgeInsets.all(3.0),
                  children: <Widget>[
                    makeDashboardItem("DASH BOARD", Icons.book),
                    makeDashboardItem("STUDENT", Icons.alarm),
                    makeDashboardItem("EXAM", Icons.expand_more),
                    makeDashboardItem("CALENDER", Icons.calendar_today),
                    makeDashboardItem("RESOURCE", Icons.restaurant),
                    makeDashboardItem(
                        "STUDENT", Icons.system_update_tv_rounded),
                  ],
                ),
              ),
            ),
            // margin: EdgeInsets.all(100.0),
            // decoration: BoxDecoration(shape: BoxShape.circle),
            // height: 80.0,
            // width: 80.0,
            // decoration: new BoxDecoration(
            //   shape: BoxShape.circle,
            //   border: Border.all(color: const Color(0x33A6A6A6)),
            //    image: new Image.asset('assets/image.jpg')
            // ),
            // child: Image.asset('assets/image.jpg')),
          ],
        ),
      ),

      // Container(
      //   padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
      //   child: GridView.count(
      //     crossAxisCount: 2,
      //     padding: EdgeInsets.all(3.0),
      //     children: <Widget>[
      //       makeDashboardItem("Ordbog", Icons.book),
      //       makeDashboardItem("Alphabet", Icons.alarm),
      //       makeDashboardItem("Alphabet", Icons.alarm),
      //       makeDashboardItem("Alphabet", Icons.alarm),
      //       makeDashboardItem("Alphabet", Icons.alarm),
      //       makeDashboardItem("Alphabet", Icons.alarm)
      //     ],
      //   ),
      // ),

      // Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: GridView.builder(
      //       gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      //           maxCrossAxisExtent: 200,
      //           childAspectRatio: 3 / 2,
      //           crossAxisSpacing: 20,
      //           mainAxisSpacing: 20),
      //       itemCount: myProducts.length,
      //       itemBuilder: (BuildContext ctx, index) {
      //         return Container(
      //           alignment: Alignment.center,
      //           child: Text(myProducts[index]["name"]),
      //           decoration: BoxDecoration(
      //               color: Colors.blue[100],
      //               borderRadius: BorderRadius.circular(15)),
      //         );
      //       }),
      // ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//         // This makes the visual density adapt to the platform that you run
//         // the app on. For desktop platforms, the controls will be smaller and
//         // closer together (more dense) than on mobile platforms.
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
