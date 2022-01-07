import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget') ,
      ),
      body: ListView(

        padding: const  EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),

        children: const [

          CustomCardType1(),

          SizedBox(height: 20),

          CustomCardType2(imgUrl: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/6999da9a-770a-4aa8-93e6-c185cc3894b9/d9roe5k-6eeae86f-486d-4a6f-acd0-bca98e85a7f1.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzY5OTlkYTlhLTc3MGEtNGFhOC05M2U2LWMxODVjYzM4OTRiOVwvZDlyb2U1ay02ZWVhZTg2Zi00ODZkLTRhNmYtYWNkMC1iY2E5OGU4NWE3ZjEucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.45Q5fEQRChDrseK0VCJSqF42TLeJH4sU9waTshW4bDA', messageCard: 'El primer paisaje',),

          SizedBox(height: 20),

          CustomCardType2(imgUrl: 'https://cdn.pixabay.com/photo/2019/05/15/15/26/flat-4205214_1280.png', messageCard: 'El segundo paisaje',),

          SizedBox(height: 20),

          CustomCardType2(imgUrl: 'https://i.redd.it/bf1osbvddz6z.jpg',)

        ],
      ),
    );
  }
}

