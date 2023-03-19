
import 'package:flutter/material.dart';

class PersonScreen extends StatelessWidget {
  const  PersonScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:   Center(  
        child: Text("Person", style: TextStyle( fontSize: 40),),
      ),
    );
  }
}
