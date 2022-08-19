import 'package:educacaoflutter/mensagens.dart';
import 'package:educacaoflutter/model/map_marker.dart';
import 'package:educacaoflutter/screen/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:latlong2/latlong.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _myLocation = LatLng(-29.68417, -53.80694);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(FontAwesomeIcons.arrowLeft),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Dashboard()));
            },
          ),
          title: Text(Mensagem.appBarTitle),
          actions: <Widget>[
            IconButton(
                icon: Icon(FontAwesomeIcons.searchengin), onPressed: () {}),
          ],
        ),
        body: new FlutterMap(
            options: new MapOptions(
              center: _myLocation,
              zoom: 13.0,
            ),
            layers: [
              TileLayerOptions(
                urlTemplate:
                    "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: ['a', 'b', 'c'],
              ),
              MarkerLayerOptions(markers: [
                for (int i = 0; i < mapMarkers.length; i++)
                  Marker(
                      width: 80.0,
                      height: 80.0,
                      point: mapMarkers[i].localizacao,
                      builder: (context) => new Container(
                            child: IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (builder) {
                                      return Container(
                                          color: Colors.white,
                                          child: Column(
                                            children: <Widget>[
                                              Container(
                                                  color: Colors.blue,
                                                  child: Text(
                                                    mapMarkers[i].nome,
                                                    style: (TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 30.0,
                                                    )),
                                                  )),
                                              Container(
                                                  child: Text(
                                                mapMarkers[i].endereco,
                                                style: (TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20.0,
                                                )),
                                              )),
                                              Container(
                                                  child: Text(
                                                mapMarkers[i]
                                                    .localizacao
                                                    .toString(),
                                                style: (TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20.0,
                                                )),
                                              )),
                                            ],
                                          ));
                                    });
                              },
                              icon: Icon(FontAwesomeIcons.school),
                              color: Colors.red,
                            ),
                          ))
              ])
            ]));
  }
}
