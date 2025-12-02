import 'package:flutter/material.dart';
import 'package:uniqlo/model/recipe.dart';

void main() {
  runApp(const UniqloApp());
}

class UniqloApp extends StatelessWidget {
  const UniqloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        )
      ),
      home: const MyHomePage(title: 'Recipe Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 120, 165),
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: Recipe.samples.length, 
          itemBuilder: (BuildContext context, int index) { 
            return buildRecipeCard(Recipe.samples[index]);
          },
        ),
      ),
    );
  }
  
  Widget buildRecipeCard(Recipe recipe){
    return Card(
      child: Column(
        children: <Widget>[
          Image(image: AssetImage(recipe.imgUrl)),
          Text(recipe.imgTitle),
        ],
      ),
    );
  }
}
