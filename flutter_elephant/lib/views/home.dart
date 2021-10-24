import 'package:flutter/material.dart';
import 'package:flutter_elephant/models/elephant.api.dart';
import 'package:flutter_elephant/models/elephant.dart';
import 'package:flutter_elephant/views/view_elephant.dart';
import 'package:flutter_elephant/views/widgets/elephant_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Elephant> _elephants = [];
  bool _isLoading = true;
  List<Elephant> _foundElephants = [];

  @override
  void initState() {
    super.initState();
    getElephants();
    _foundElephants = _elephants;
  }

  Future<void> getElephants() async {
    _elephants = await ElephantApi.getElephant();
    setState(() {
      _isLoading = false;
    });
  }

  void _runFilter(String enteredKeyword) {
    List<Elephant> results = [];
    if (enteredKeyword.isEmpty) {
      results = _elephants;
    } else {
      results = _elephants
          .where((elephant) => elephant.name
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundElephants = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [SizedBox(width: 10), Text('Elephant Information Api')],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: const InputDecoration(
                  labelText: 'Search', suffixIcon: Icon(Icons.search)),
            ),
            _foundElephants.isEmpty
                ? Text(
                    'Elefante no encontrado:',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontFamily: 'Raleway'),
                  )
                : const SizedBox(
                    height: 20,
                  ),
            Expanded(
                child: _foundElephants.isNotEmpty
                    ? _isLoading
                        ? Center(child: CircularProgressIndicator())
                        : ListView.builder(
                            itemCount: _foundElephants.length,
                            itemBuilder: (contex, index) {
                              return ElephantCard(
                                elephant: _foundElephants[index],
                                context2: contex,
                              );
                            })
                    : _isLoading
                        ? Center(child: CircularProgressIndicator())
                        : ListView.builder(
                            itemCount: _elephants.length,
                            itemBuilder: (contex, index) {
                              return ElephantCard(
                                elephant: _elephants[index],
                                context2: contex,
                              );
                            })),
          ],
        ),
      ),
    );
  }
}
