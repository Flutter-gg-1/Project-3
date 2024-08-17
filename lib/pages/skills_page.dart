



import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:icons_plus/icons_plus.dart';
import 'package:project_3/widget/card_skill_widget.dart';
import 'package:project_3/widget/title_skill_card_widget.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Color(0xff41AC78),
        backgroundColor: Color(0xffE5E5E5).withOpacity(0.8),

        items: [
          BottomNavigationBarItem(label: "", icon: IconButton(icon:Icon(FontAwesome.house_solid) ,onPressed: () {
            
          },)),
           BottomNavigationBarItem(label: "", icon: IconButton(icon:Icon(FontAwesome.bullseye_solid) ,onPressed: () {
            
          },))

          ,BottomNavigationBarItem(label: "", icon: IconButton(icon:Icon(FontAwesome.people_group_solid) ,onPressed: () {
            
          },)),
           BottomNavigationBarItem(label: "", icon: IconButton(icon:Icon(FontAwesome.gear_solid) ,onPressed: () {
            
          },)),

          
        ],
      ),

      body: SafeArea(child: 
      
      SingleChildScrollView(
        child: Column(
          children: [

            Container(

              margin: const EdgeInsets.only(top: 75 ,bottom: 20),
              width: double.infinity,
              height: 71,

              color: const Color(0xccE5E5E5),

              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  
                  const Icon(FontAwesome.fire_solid , color: Color(0xffEB9F4A),)
                  ,Text("3", style: GoogleFonts.roboto(fontSize: 20,color: const Color(0xffEB9F4A)),),
                  const SizedBox(width: 35,),
                  const Icon(FontAwesome.toolbox_solid , color: Color(0xff338F9B),)
                  ,Text("1432 XP", style: GoogleFonts.roboto(fontSize: 20,color: const Color(0xff338F9B)),),
                  const SizedBox(width: 35,),
                  const Icon(FontAwesome.heart_solid , color: Color(0xffDC3F00),),
                  const SizedBox(width: 10,)
                  ,const Icon(FontAwesome.infinity_solid , color: Color(0xffDC3F00),)
                ],
              ),
            )


           , const TitleSkillCardWidget(title: "Logical reasoning",complit: "18",),

           const CardSkillWidget(complit: "18",)


           ,const TitleSkillCardWidget(title: "Artistic thinking",complit: "35",),

           const CardSkillWidget(complit: "35",)

           ,const TitleSkillCardWidget(title: "Verbal skills",complit: "3",),

           const CardSkillWidget(complit: "3",)




            


          ],
        ),
      )),
    );
  }
}