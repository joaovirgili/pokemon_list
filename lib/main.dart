import 'package:flutter/material.dart';
import 'package:pokemon_list/components/app_tabbar.dart';
import 'package:pokemon_list/components/pokemon_list.dart';
import 'package:pokemon_list/components/search_bar.dart';
import 'package:pokemon_list/components/select_page_section.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 25.0, right: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SelectPageSection(),
            SizedBox(height: 30),
            SearchBar(),
            SizedBox(height: 30),
            AppTabBar(),
            PokemonList(),
          ],
        ),
      ),
    );
  }
}
