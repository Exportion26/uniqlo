import 'package:flutter/material.dart';
import 'package:uniqlo/model/uniqlo.dart';
import 'package:uniqlo/uniqlo_detail.dart';

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
      home: const MyHomePage(title: 'Uniqlo Calculator'),
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
        title: Text(widget.title, style: TextStyle(fontFamily: 'D-DIN'),),
      ),
      body: SafeArea(
        child: Container(
          child: ListView.builder(
            itemCount: Uniqlo.samples.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  print(Uniqlo.samples[index].imgTitle);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return UniqloDetail(uniqlo: Uniqlo.samples[index]);
                      },
                    ),
                  );
                },
                child: buildUniqloCard(Uniqlo.samples[index]),
              );
            },
          ),
        ),
      ),
    );
  }
  
  Widget buildUniqloCard(Uniqlo uniqlo) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(uniqlo.imgUrl)),
            SizedBox(height: 14.0),
            Text(
              uniqlo.imgTitle,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'D-DIN',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
