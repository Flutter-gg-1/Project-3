import 'package:flutter/material.dart';

class Achievements extends StatelessWidget {
  final List<String> data;
  const Achievements({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const ClampingScrollPhysics(),
      shrinkWrap: true,
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Container(
          width: 378,
          height: 132,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            border: Border.all(width: 3, color: const Color.fromRGBO(0, 0, 0, 0.1)),
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xffFBF5F2),
          ),
          child: Column(
            children: [
              Card.filled(
                color: const Color(0xffFBF5F2),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                    leading: FittedBox(
                      fit: BoxFit.none,
                      child: Image.asset("assets/images/${data[index]}.png",width: 200,height: 104),
                    ),
                    title: const Text("Lorem Ipsum",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                    subtitle: const Text(
                      "is simply dummy text of the printing and typesetting industry.",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 20,height: 1,color: Colors.black,),
                    ),
                  ),
              ),
            ],
          ),
        );
      }
    );
  }
}