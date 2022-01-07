import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogAndroid(BuildContext context){

    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context){
        return AlertDialog(
          elevation: 5,
          title: const Text('Esta es una alerta'),
          shape: RoundedRectangleBorder( borderRadius: BorderRadiusDirectional.circular(10) ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 10,),
              FlutterLogo(size: 100,)
            ],),
            actions: [
              TextButton(
                onPressed: (){
                  Navigator.pop(context); 
                },
                child: const Text('Cancelar'),
              ),
              TextButton(
                onPressed: (){
                  Navigator.pop(context); 
                },
                child: const Text('Ok'),
              )
            ], 
        );
      }

    );

  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Center(
         child: ElevatedButton(
           child: const Padding(
             padding:  EdgeInsets.all(15),
             child:  Text('Mostrar Alerta', style: TextStyle(fontSize: 16,)),
           ),
           onPressed: (){
             displayDialogAndroid(context);
           },
         ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close_rounded),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}