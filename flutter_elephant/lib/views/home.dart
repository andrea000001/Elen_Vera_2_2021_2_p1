import 'package:flutter/material.dart';
import 'package:flutter_elephant/models/elephant.api.dart';
import 'package:flutter_elephant/models/elephant.dart';
import 'package:flutter_elephant/views/widgets/elephant_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Elephant> _elephants = [];

  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getElephants();
  }

  Future<void> getElephants() async {
    _elephants = await ElephantApi.getElephant();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 10),
              Text('Elephant Information Api')
            ],
          ),
        ),
        body: _isLoading
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: _elephants.length,
                itemBuilder: (contex, index) {
                  return ElephantCard(
                      title: _elephants[index].name,                    
                      thumbnailUrl: _elephants[index].image);
                }));
  }
}
