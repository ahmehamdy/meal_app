import 'package:flutter/material.dart';
class categoryItems extends StatelessWidget {

  final String name;
  final String image;
  final String id;

  const categoryItems({super.key, required this.name, required this.image, required this.id});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(topRight: Radius.circular(20),bottomLeft:Radius.circular(20)),
        child: InkWell(
          onTap: (){
            Navigator.pushNamed(context, "mealScreen",arguments: {
              "id":id,
              "name":name
            });
          },
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(image)
                    )
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                color: Colors.red[900],
                child: Text(name,style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
