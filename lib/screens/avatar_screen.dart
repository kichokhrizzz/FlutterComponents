import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Spider-Man'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const CircleAvatar(
              
              backgroundColor: AppTheme.secundary ,
              backgroundImage: NetworkImage('https://depor.com/resizer/F0VwNl_aQG7YOHv8ljEHbQrtzvY=/1200x1200/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/I6ZHRINANBAW7D3O4ZSV3MUOG4.jpg'),
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
           maxRadius: 110,
           backgroundImage: NetworkImage('https://depor.com/resizer/F0VwNl_aQG7YOHv8ljEHbQrtzvY=/1200x1200/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/I6ZHRINANBAW7D3O4ZSV3MUOG4.jpg'),
         ) ,
      ),
    );
  }
}