import 'package:flutter/material.dart';
import 'package:pill_pusher/domain/pill-set.dart';
import 'package:pill_pusher/domain/pill-sets.dart';
import 'package:pill_pusher/domain/test-data.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pill Pusher',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Pill Pusher'),
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
  // TODO this is a stub - get from data store
  PillSets _pillSets = PillSets.fromJson(testPillSets);

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
      body: ListView(
          children: _pillSets.sets.map((set) => _buildSetItem( set, _pillSets.dependent)).toList(),
       ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _buildSetItem(PillSet set, String dependent) {
//    return _buildSetHeader(set);
    return ExpansionTile(
      title: _buildSetTitle(set),
      subtitle: _buildSetSubtitle(set),
      children: [
        _buildDependent(dependent),
        _buildPillList(set.pills),
      ]
    );
  }

  Widget _buildSetTitle(PillSet set) {
    return Text(
        set.name,
        style: new TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)
    );
  }

  Widget _buildSetSubtitle(PillSet set) {
    return Text(
        set.frequency,
        style: new TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)
    );
  }

  Widget _buildDependent(String dependent) {
    return Row (
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
            "Dependent: ${dependent}",
            style: new TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal)
        ),
      ]
    );
  }

  Widget _buildPillList(List pills) {
    return ExpansionTile(
        children: pills.map((pill) => _buildPillItem(pill)).toList(),
    );
  }

  Widget _buildPillItem(String pill) {
    return Text(
        pill,
        style: new TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal)
    );
  }



}