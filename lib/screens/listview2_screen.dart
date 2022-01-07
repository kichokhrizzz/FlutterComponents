import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
   
   final options = const['C++','C#','Java','PHP','JavaScript'];

  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('List View Tipo ')
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_right_rounded), 
          onTap: (){},),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: options.length
      )
    );
  }
}