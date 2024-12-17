import 'package:flutter/material.dart';
import 'package:mealapp/data.dart';
import 'package:mealapp/widget/categoryItems.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,

        title: Text("Bramer",style: TextStyle(fontSize: 40,color: Colors.red),),
        leading: Container(
          margin: EdgeInsets.all(5),
          child: Image.asset("images/br2.jpg"),
        ),
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return categoryItems(name: CATEGORIES[index].name, image: CATEGORIES[index].image, id: CATEGORIES[index].id);
      },itemCount: CATEGORIES.length,),
    );
  }
}
