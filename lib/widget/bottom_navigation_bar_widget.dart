import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:project_3/pages/profile_page.dart';
import 'package:project_3/pages/skills_page.dart';


class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    super.key, required this.index, required this.color,
  });

  final int index;

  final Color  color;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      type: BottomNavigationBarType.fixed,
      fixedColor:  color,
      backgroundColor: const Color(0xffE5E5E5).withOpacity(0.8),
    
      items: [
        BottomNavigationBarItem(label: "", icon: IconButton(icon:const Icon(FontAwesome.house_solid) ,onPressed: () {

          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
                  
                  return const SkillsPage();

                },));
          
        },)),
         BottomNavigationBarItem(label: "", icon: IconButton(icon:const Icon(FontAwesome.bullseye_solid) ,onPressed: () {
          
        },))
    
        ,BottomNavigationBarItem(label: "", icon: IconButton(icon:const Icon(FontAwesome.people_group_solid) ,onPressed: () {

          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
                  
                  return const ProfilePage();

                },));
          
        },)),
         BottomNavigationBarItem(label: "", icon: IconButton(icon:const Icon(FontAwesome.gear_solid) ,onPressed: () {
          
        },)),
    
        
      ],
    );
  }
}