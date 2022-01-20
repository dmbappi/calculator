import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  // const CalculatorPage({Key? key}) : super(key: key);
List <String> buttonsList = [
  'AC',
  'DEL',
  '%',
  '/',
  '7',
  '8',
  '9',
  '*',
  '4',
  '5',
  '6',
  '-',
  '1',
  '2',
  '3',
  '+',
  '^',
  '0',
  '.',
  '=',
];

String expression = '';

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    var buttonsList;
    return Scaffold(
      appBar: AppBar(
        title: const  Text('Calculator'),
      ),
      body: Padding(
        padding:  EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('0', style: TextStyle(
              fontSize: 40,
            ),),
        const Divider(),
            GridView.builder(
              shrinkWrap: true,
              itemCount: 20,
              gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:4,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,

            ), itemBuilder: (context , index){
              return Container(
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(buttonsList[index],
                  style: const TextStyle(fontSize: 26),),
                ),
              );
            },)
          ],
        ),
      ),
    );
  }
}
