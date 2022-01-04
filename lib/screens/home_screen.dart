import 'package:fl_components/screens/listview1_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        centerTitle: true,
        backgroundColor: const  Color.fromRGBO(22, 24, 83, 1),
        elevation: .5,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: const Text('Nombre de la Ruta'),
          leading: const Icon(Icons.done_outlined, color: Color.fromRGBO(22, 24, 83, 1) ,),
          onTap: (){

            Navigator.pushNamed(context, 'alert');
           
          },
        ), 
        separatorBuilder:(_, __) => const Divider(), 
        itemCount: 10
      )
    );
  }
}