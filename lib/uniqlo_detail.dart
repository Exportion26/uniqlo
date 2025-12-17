import 'package:flutter/material.dart';
import 'package:uniqlo/model/uniqlo.dart';

class UniqloDetail extends StatefulWidget {
  Uniqlo uniqlo;
  

  UniqloDetail({super.key, required this.uniqlo});

  @override
  State<StatefulWidget> createState() {
    return _UniqloDetailState();
  }
}

class _UniqloDetailState extends State<UniqloDetail> {
  int sliderValue = 1;
  @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Uniqlo Detail', style: TextStyle(fontFamily: 'D-DIN')),
        backgroundColor: const Color.fromARGB(255, 255, 120, 165),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image(image: AssetImage(widget.uniqlo.imgUrl)),
            SizedBox(height: 14.0),
            Text(
              widget.uniqlo.imgTitle,
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontSize: 20.0,
                fontFamily: 'D-DIN',
                fontWeight: FontWeight.w400
              ),
            ),
            SizedBox(height: 14.0),
            Text(
              widget.uniqlo.description,
              style: TextStyle(
                color: const Color.fromARGB(255, 40, 40, 40),
                fontSize: 16.0,
                fontFamily: 'Metrophobic',
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20.0),
            Expanded(
              child: ListView.builder(itemBuilder: (BuildContext context, int index) {
                final cost = widget.uniqlo.cost[index];
                return Text(
                '${cost.quantity * sliderValue} ${cost.unit1} ${cost.price * sliderValue} ${cost.unit2}',
                style: const TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Metrophobic',
              ),
              );
            },
            itemCount: widget.uniqlo.cost.length,
            ),
          ),
            SizedBox(height: 20.0,),
            Slider(
              min: 1,
              max: 10,
              divisions: 10,
              value: sliderValue.toDouble(), 
              onChanged: (newValue){
                setState(() {
                  sliderValue = newValue.round();
                }
                );
              }
            ),
          ],
        ),
      ),
    );
  }
  }
