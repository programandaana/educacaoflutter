import 'package:educacaoflutter/screen/map_screen.dart';
import 'package:flutter/material.dart';
import 'package:geocode/geocode.dart';
import 'package:educacaoflutter/mensagens.dart';
import 'package:geolocator/geolocator.dart';
import 'package:location/location.dart';

class Dashboard extends StatelessWidget {
  Widget _titleSection = Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              Mensagem.appHeadingTitle,
              style: (TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              )),
            )),
        Container(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                Mensagem.latitude + '\'' + Mensagem.longitude,
                style: (TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                )),
              )),
        )
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Mensagem.appBarTitle),
      ),
      body: ListView(
        children: [
          Column(
            children: <Widget>[
              _titleSection,
              Container(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 25.0),
                  child: ElevatedButton(
                    child: Text(
                      'Mapa',
                      style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1.5,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => MyApp()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
