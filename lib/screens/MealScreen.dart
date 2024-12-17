import 'package:flutter/material.dart';
import 'package:mealapp/Models/mael.dart';
import 'package:mealapp/data.dart';
import 'package:mealapp/widget/categoryItems.dart';

class MealScreen extends StatelessWidget {
  const MealScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String,dynamic> data= ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>;
    String name=data["name"];
    String id=data["id"];
    List<Meal> dataFliter = DUMMY_MEAL.where((element){
      return element.categoryNumber.contains(id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(name,style: TextStyle(fontSize: 40,color: Colors.red),),
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return categoryItems(name: dataFliter[index].title, image: dataFliter[index].imageUrl, id: dataFliter[index].id);
      },itemCount: dataFliter.length,),
    );
  }
}
