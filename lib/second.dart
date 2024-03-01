import 'package:flutter/material.dart';
import 'package:proprovider/list_provider.dart';
import 'package:provider/provider.dart';


class Second extends StatefulWidget {

  const Second({super.key,});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListprovider>(
      builder:(context,numbersListProvider,child)=>  Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                numbersListProvider.add();
              },
              child: Icon(Icons.add),
            ),
            SizedBox(width: 16), // Add some space between the buttons
            FloatingActionButton(
              onPressed: () {
                numbersListProvider.subtract();
              },
              child: Icon(Icons.remove),
            ),
          ],
        ),

      appBar: AppBar(),
      body: SizedBox(
          child: Column(
            children: [
              Text(numbersListProvider.numbers.last.toString(),style: const TextStyle(fontSize: 30)),
              Container(
                height: 300,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: numbersListProvider.numbers.length,
                    itemBuilder: (context, index) {
                      return  Text(numbersListProvider.numbers[index].toString(),style:const TextStyle(fontSize: 30),);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
