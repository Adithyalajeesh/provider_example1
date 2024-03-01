import 'package:flutter/material.dart';
import 'package:proprovider/second.dart';
import 'package:provider/provider.dart';

import 'list_provider.dart';


class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return  Consumer<NumberListprovider>(
      builder:(context,numbersProviderModel,child) =>Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                numbersProviderModel.add();
              },
              child: Icon(Icons.add),
            ),
            SizedBox(width: 16), // Add some space between the buttons
            FloatingActionButton(
              onPressed: () {
                numbersProviderModel.subtract();
              },
              child: Icon(Icons.remove),
            ),
          ],
        ),
      appBar: AppBar(),
      body:SizedBox(
          child: Column(
            children: [
               Text(numbersProviderModel.numbers.last.toString(),style: const TextStyle(fontSize: 30)),
              Expanded(
                  child: ListView.builder(
                      itemCount:numbersProviderModel.numbers.length,
                      itemBuilder: (context, index) {
                        return  Text(numbersProviderModel.numbers[index].toString(),style:const TextStyle(fontSize: 30),);
                      })),
              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Second()));
              }, child: Text('Second page'))
            ],
          ),
        ),
      ),
    );
  }
}
