
import 'package:flutter/material.dart';

class FavoritScreen extends StatelessWidget {
  const FavoritScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:   Center(  
        child: Text("fav", style: TextStyle( fontSize: 40),),
      ),
    );
  }
}
