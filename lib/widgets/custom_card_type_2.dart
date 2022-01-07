import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {

  final String imgUrl;
  final String? messageCard;

  const CustomCardType2({ Key? key, required this.imgUrl, this.messageCard }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      shadowColor: AppTheme.primary,
      child: Column(
        children:   [
          Image(
            image: NetworkImage(imgUrl),
            width: double.infinity,
            height: 210,
            fit: BoxFit.cover,
          ),
          if ( messageCard != null )
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child:   Text( messageCard! ),
          )
        ],
      ),
    );

  }
}