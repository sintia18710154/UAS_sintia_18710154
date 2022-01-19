import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text(
            "Profile Developer",
            style: TextStyle(fontFamily: "Acme"),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 250),
            child: Column(
              children: <Widget>[
                SizedBox(
                  width: 280,
                  height: 47,
                  child: MaterialButton(
                    color: Colors.red,
                    child: Text(
                      "Sintia",
                      style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 21,
                          fontFamily: "Acme"),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 280,
                  height: 47,
                  child: MaterialButton(
                    color: Colors.red,
                    child: Text(
                      "18710154",
                      style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 21,
                          fontFamily: "Acme"),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 280,
                  height: 47,
                  child: MaterialButton(
                    color: Colors.red,
                    child: Text(
                      "7F SI Reguler Malam BJM",
                      style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 21,
                          fontFamily: "Acme"),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 280,
                  height: 47,
                  child: MaterialButton(
                    color: Colors.red,
                    child: Text(
                      "081240483040",
                      style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 21,
                          fontFamily: "Acme"),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 280,
                  height: 47,
                  child: MaterialButton(
                    color: Colors.red,
                    child: Text(
                      "Jl.Cakra Adiwijaya",
                      style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 21,
                          fontFamily: "Acme"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class HitungApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('APP PENGHITUNG LUAS'),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                ),
              ),
              ListTile(
                title: Text('Hitung Luas'),
                onTap: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => HitungApp());
                  Navigator.push(context, route);
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text(
            "Hitung Luas",
            style: TextStyle(fontFamily: "Acme"),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 250),
            child: Column(
              children: <Widget>[
                SizedBox(
                  width: 280,
                  height: 47,
                  child: MaterialButton(
                    color: Colors.yellow,
                    child: Text(
                      "Hitung Luas Persegi",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontFamily: "Acme"),
                    ),
                    onPressed: () {
                      Route route =
                          MaterialPageRoute(builder: (context) => PersegiApp());
                      Navigator.push(context, route);
                    },
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 280,
                  height: 47,
                  child: MaterialButton(
                    color: Colors.yellow,
                    child: Text(
                      "Hitung Luas Lingkaran",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontFamily: "Acme"),
                    ),
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => LingkaranApp());
                      Navigator.push(context, route);
                    },
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 280,
                  height: 47,
                  child: MaterialButton(
                    color: Colors.yellow,
                    child: Text(
                      "PROFILE DEVELOPER",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontFamily: "Acme"),
                    ),
                    onPressed: () {
                      Route route =
                          MaterialPageRoute(builder: (context) => ProfileApp());
                      Navigator.push(context, route);
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class PersegiApp extends StatefulWidget {
  @override
  _PersegiAppState createState() => _PersegiAppState();
}

class _PersegiAppState extends State<PersegiApp> {
  double panjang = 0;
  double lebar = 0;

  var _nama = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.view_list),
        title: new Text("Menghitung Luas"),
        backgroundColor: Colors.yellow,
        centerTitle: true,
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(20),
            child: new Column(
              children: <Widget>[
                new Padding(
                  padding: new EdgeInsets.only(top: 20),
                ),
                new Row(
                  children: <Widget>[
                    Expanded(
                        child: TextField(
                      onChanged: (txt) {
                        setState(() {
                          panjang = double.parse(txt);
                        });
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                          labelText: "Input Panjang",
                          suffix: Text("cm"),
                          border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10)),
                          hintText: "Panjang"),
                    )),
                    SizedBox(width: 10),
                    Expanded(
                        child: TextField(
                      onChanged: (txt) {
                        setState(() {
                          lebar = double.parse(txt);
                        });
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                          labelText: "Input Lebar",
                          suffix: Text("cm"),
                          border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10)),
                          hintText: "Lebar"),
                    )),
                  ],
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                  child: RaisedButton(
                    onPressed: () {
                      var route = new MaterialPageRoute(
                        builder: (BuildContext) => new PersegiPage(
                            input_panjang: panjang, input_lebar: lebar),
                      );
                      Navigator.of(context).push(route);
                    },
                    padding: EdgeInsets.all(10.0),
                    color: Colors.yellow,
                    textColor: Colors.white,
                    child: Text(
                      "Hitung Luas Persegi",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LingkaranApp extends StatefulWidget {
  @override
  _LingkaranAppState createState() => _LingkaranAppState();
}

class _LingkaranAppState extends State<LingkaranApp> {
  double panjang = 0;
  double lebar = 0;
  double tinggi = 0;

  var _nama = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.view_list),
        title: new Text("Menghitung Luas Lingkaran"),
        backgroundColor: Colors.yellow,
        centerTitle: true,
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(20),
            child: new Column(
              children: <Widget>[
                new Padding(
                  padding: new EdgeInsets.only(top: 20),
                ),
                new Row(
                  children: <Widget>[
                    Expanded(
                        child: TextField(
                      onChanged: (txt) {
                        setState(() {
                          panjang = double.parse(txt);
                        });
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                          labelText: "Input Jari-Jari",
                          suffix: Text(""),
                          border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10)),
                          hintText: "Jari-Jari"),
                    )),
                    SizedBox(width: 10),
                  ],
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                  child: RaisedButton(
                    onPressed: () {
                      var route = new MaterialPageRoute(
                        builder: (BuildContext) => new LingkaranPage(
                          input_panjang: panjang,
                        ),
                      );
                      Navigator.of(context).push(route);
                    },
                    padding: EdgeInsets.all(10.0),
                    color: Colors.yellow,
                    textColor: Colors.white,
                    child: Text(
                      "Hitung Luas Lingkaran",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PersegiPage extends StatelessWidget {
  PersegiPage({@required this.input_panjang, @required this.input_lebar});
  final double input_panjang;
  final double input_lebar;

  int thasil;
  String cHasil;
  int hasil;

  @override
  Widget build(BuildContext context) {
    double hasil = (input_panjang * input_lebar * 1.0);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hasil"),
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.white,
              ),
            ),
            Text(
              "Panjang : $input_panjang cm",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
                fontFamily: "Acme",
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Lebar : $input_lebar cm",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.black54,
                  fontFamily: "Acme"),
            ),
            SizedBox(height: 5),
            Text(
              "Jadi Luasnya adalah : ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.black54,
                  fontFamily: "Acme"),
            ),
            EasyRichText(
              '$hasil cm2',
              patternList: [
                EasyRichTextPattern(
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                  targetString: '$hasil cm',
                ),
                EasyRichTextPattern(
                  targetString: '2',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                  superScript: true,
                  stringBeforeTarget: 'm',
                  matchWordBoundaries: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LingkaranPage extends StatelessWidget {
  LingkaranPage({
    @required this.input_panjang,
  });
  final double input_panjang;
  int thasil;
  String cHasil;
  int hasil;
  @override
  Widget build(BuildContext context) {
    double hasil = (input_panjang * 3.14);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hasil"),
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.white,
              ),
            ),
            Text(
              "Jari-Jari : $input_panjang",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
                fontFamily: "Acme",
              ),
            ),
            Text(
              "Jadi Luas Lingkarannya adalah : ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.black54,
                  fontFamily: "Acme"),
            ),
            EasyRichText(
              '$hasil',
              patternList: [
                EasyRichTextPattern(
                  targetString: '$hasil m',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
