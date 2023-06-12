import 'package:flutter/material.dart';
import '/models/bachelor.dart';
import '/models/database.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  
  final List<Bachelor> bachelors = generateFakeBachelors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bachelors'),
      ),
      body: ListView.builder(
        itemCount: bachelors.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(bachelors[index].avatar),
            ),
            title: Text(bachelors[index].firstname),
            subtitle: Text(bachelors[index].lastname),
          );
        },
      ),
    );
  }
}