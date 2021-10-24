import 'package:flutter/material.dart';
import 'package:flutter_elephant/models/elephant.dart';

class ViewElephant extends StatefulWidget {
  final Elephant elephant;

  ViewElephant({required this.elephant});

  @override
  _ViewElephantState createState() => _ViewElephantState();
}

class _ViewElephantState extends State<ViewElephant> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.elephant.name),
      ),
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0)),
                    image: DecorationImage(
                      image: NetworkImage(widget.elephant.image),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 10, 20, 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 7),
                    child: Text(
                      'Id: ${widget.elephant.sId}',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Raleway'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 7),
                    child: Text(
                      'Index: ${widget.elephant.index}',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Raleway'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 7),
                    child: Text(
                      'Nombre: ${widget.elephant.name}',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Raleway'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 7),
                    child: Text(
                      'Afiliación: ${widget.elephant.affiliation}',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Raleway'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 7),
                    child: Text(
                      'Especie: ${widget.elephant.species}',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Raleway'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 7),
                    child: Text(
                      'Sexo: ${widget.elephant.sex}',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Raleway'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 7),
                    child: Text(
                      'Ficticio: ${widget.elephant.fictional}',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Raleway'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 7),
                    child: Text(
                      'Dob: ${widget.elephant.dob}',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Raleway'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 7),
                    child: Text(
                      'Dod: ${widget.elephant.dod}',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Raleway'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 7),
                    child: Text(
                      'WikiLink: ${widget.elephant.wikilink}',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Raleway'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 7),
                    child: Text(
                      'Descripción: ${widget.elephant.note}',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Raleway'),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ]),
    );
  }
}

Widget _showElephantInfo() {
  return Scaffold();
}
