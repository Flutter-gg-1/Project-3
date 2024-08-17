import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 31),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xCCE5E5E5),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 18, 0.3, 18),
                  child: Center(
                    child: Text(
                      'Profile',
                      style: GoogleFonts.getFont(
                        'Roboto',
                        fontWeight: FontWeight.w400,
                        fontSize: 30,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(
                  'Nidhi Pandya',
                  style: GoogleFonts.getFont(
                    'Roboto',
                    fontWeight: FontWeight.w400,
                    fontSize: 30,
                    color: Color(0xFF000000),
                  ),
                ),
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nidhi12',
                      style: GoogleFonts.getFont(
                        'Roboto',
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: Color(0x80000000),
                      ),
                    ),
                    Text(
                      'Joined March 2022',
                      style: GoogleFonts.getFont(
                        'Roboto',
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
                trailing: CircleAvatar(
                  radius: 30, // Increased radius for a bigger avatar
                  backgroundImage: AssetImage('assets/images/ellipse_1.jpeg'),
                ),
              ),
            ),
            Divider(
              height: 2,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white, // Background color of the container
                  borderRadius: BorderRadius.circular(28.0), // Rounded corners
                  border: Border.all(
                    color: Colors.grey.shade300, // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: RichText(
                      text: TextSpan(
                        style: GoogleFonts.getFont(
                          'Roboto',
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Color(0xFF000000),
                        ),
                        children: [
                          TextSpan(
                            text: '🎊',
                            style: GoogleFonts.getFont(
                              'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 40,
                              height: 1.3,
                            ),
                          ),
                          TextSpan(
                            text: ' ',
                            style: GoogleFonts.getFont(
                              'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    title: Text(
                      'Friends updates',
                      style: GoogleFonts.getFont(
                        'Roboto',
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: Color(0xFF000000),
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25, 0, 25, 12),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Statistics',
                  style: GoogleFonts.getFont(
                    'Roboto',
                    fontWeight: FontWeight.w400,
                    fontSize: 30,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors
                                .white, // Background color of the container
                            borderRadius:
                                BorderRadius.circular(28.0), // Rounded corners
                            border: Border.all(
                              color: Colors.grey.shade300, // Border color
                              width: 3.0, // Border width
                            ),
                          ),
                          child: ListTile(
                            leading: SizedBox(
                              width: 26,
                              height: 29,
                              child: SvgPicture.asset(
                                'assets/vectors/vector_25_x2.svg',
                              ),
                            ),
                            title: Text(
                              '3',
                              style: GoogleFonts.getFont(
                                'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                color: Color(0xFF000000),
                              ),
                            ),
                            subtitle: Text(
                              'Day Streak',
                              style: GoogleFonts.getFont(
                                'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                height: 1.3,
                                color: Color(0x66000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8), // Add space between the tiles
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors
                                .white, // Background color of the container
                            borderRadius:
                                BorderRadius.circular(28.0), // Rounded corners
                            border: Border.all(
                              color: Colors.grey.shade300, // Border color
                              width: 3.0, // Border width
                            ),
                          ),
                          child: ListTile(
                            leading: SizedBox(
                              width: 26,
                              height: 29,
                              child: SvgPicture.asset(
                                'assets/vectors/vector_18_x2.svg',
                              ),
                            ),
                            title: Text(
                              '1432 ',
                              style: GoogleFonts.getFont(
                                'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                color: Color(0xFF000000),
                              ),
                            ),
                            subtitle: Text(
                              'Total XP',
                              style: GoogleFonts.getFont(
                                'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                height: 1.3,
                                color: Color(0x66000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8), // Add space between the rows
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors
                                .white, // Background color of the container
                            borderRadius:
                                BorderRadius.circular(28.0), // Rounded corners
                            border: Border.all(
                              color: Colors.grey.shade300, // Border color
                              width: 3.0, // Border width
                            ),
                          ),
                          child: ListTile(
                            leading: SizedBox(
                              width: 34,
                              height: 34,
                              child: SvgPicture.asset(
                                'assets/vectors/noto_3_rd_place_medal_x2.svg',
                              ),
                            ),
                            title: Text(
                              'Bronze ',
                              style: GoogleFonts.getFont(
                                'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                color: Color(0xFF000000),
                              ),
                            ),
                            subtitle: Text(
                              'Current League',
                              style: GoogleFonts.getFont(
                                'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                height: 1.3,
                                color: Color(0x66000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8), // Add space between the tiles
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors
                                .white, // Background color of the container
                            borderRadius:
                                BorderRadius.circular(28.0), // Rounded corners
                            border: Border.all(
                              color: Colors.grey.shade300, // Border color
                              width: 3.0, // Border width
                            ),
                          ),
                          child: ListTile(
                            leading: SizedBox(
                              width: 36,
                              height: 36,
                              child: SvgPicture.asset(
                                'assets/vectors/bxmedal_x2.svg',
                              ),
                            ),
                            title: Text(
                              '0',
                              style: GoogleFonts.getFont(
                                'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                color: Color(0xFF000000),
                              ),
                            ),
                            subtitle: Text(
                              'Top 3 Finishes',
                              style: GoogleFonts.getFont(
                                'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                height: 1.3,
                                color: Color(0x66000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(26, 0, 23.5, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 17.5, 0),
                    child: SizedBox(
                      width: 99,
                      child: Text(
                        'Friends',
                        style: GoogleFonts.getFont(
                          'Roboto',
                          fontWeight: FontWeight.w400,
                          fontSize: 30,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 5, 0, 7),
                    child: Text(
                      'ADD FRIENDS',
                      style: GoogleFonts.getFont(
                        'Roboto',
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Color(0xFF02A1FB),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25, 0, 26, 28),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0x1A000000)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(18, 8, 16.1, 7.3),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 1, 16),
                            child: SizedBox(
                              width: 272,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 9, 0),
                                    child: SizedBox(
                                      width: 84,
                                      child: Text(
                                        'FOLLOWING',
                                        style: GoogleFonts.getFont(
                                          'Roboto',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15,
                                          color: Color(0xFF02A1FB),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'FOLLOWERS',
                                    style: GoogleFonts.getFont(
                                      'Roboto',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                      color: Color(0x80000000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 18.3),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.fromLTRB(0, 0.7, 16, 9.3),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFAB70DF),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(
                                              10, 6, 10.3, 7),
                                          child: Text(
                                            'H',
                                            style: GoogleFonts.getFont(
                                              'Roboto',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              color: Color(0xFFFFFFFF),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        text: 'Hardi ',
                                        style: GoogleFonts.getFont(
                                          'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                          color: Color(0xFF000000),
                                        ),
                                        children: [
                                          TextSpan(
                                            text: '4367 XP',
                                            style: GoogleFonts.getFont(
                                              'Roboto',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              height: 1.3,
                                              color: Color(0x66000000),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 11.2, 0, 13.1),
                                  width: 9.9,
                                  height: 16.8,
                                  child: SizedBox(
                                    width: 9.9,
                                    height: 16.8,
                                    child: SvgPicture.asset(
                                      'assets/vectors/vector_19_x2.svg',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(height: 2, color: Colors.grey.shade300),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 16, 10.4),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFDF7070),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Container(
                                        padding:
                                            EdgeInsets.fromLTRB(11, 6, 10.6, 7),
                                        child: Text(
                                          'K',
                                          style: GoogleFonts.getFont(
                                            'Roboto',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15,
                                            color: Color(0xFFFFFFFF),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0.4, 0, 0),
                                    child: RichText(
                                      text: TextSpan(
                                        text: 'Krishna   ',
                                        style: GoogleFonts.getFont(
                                          'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                          color: Color(0xFF000000),
                                        ),
                                        children: [
                                          TextSpan(
                                            text: '2334 XP',
                                            style: GoogleFonts.getFont(
                                              'Roboto',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              height: 1.3,
                                              color: Color(0x66000000),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 13.3, 0, 11.3),
                                width: 9.9,
                                height: 16.8,
                                child: SizedBox(
                                  width: 9.9,
                                  height: 16.8,
                                  child: SvgPicture.asset(
                                    'assets/vectors/vector_x2.svg',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 1,
                    top: 39,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF02A1FB),
                      ),
                      child: Container(
                        width: 188,
                        height: 0,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 39,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0x1A000000),
                      ),
                      child: Container(
                        width: 188,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28.0), // Rounded corners
                  border: Border.all(
                    color: Colors.grey.shade300, // Border color
                    width: 3.0, // Border width
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Image.asset(
                              'assets/images/dayflow_black_cat.png',
                              height: 120,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: ListTile(
                              title: Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text(
                                  'Invite your friends ',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                    height: 1.3,
                                  ),
                                ),
                              ),
                              subtitle: Text(
                                'Tell your friends it’s free and fun to learn on Mental up!',
                                style: GoogleFonts.getFont(
                                  'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 10),
                            ),
                            child: Text(
                              'INVITE FRIENDS',
                              style: GoogleFonts.getFont(
                                'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// كومنت هذا عن تفاصيل الصفحة:

//  استخدمت  `ListView` لعرض قائمة المشاريع مع إمكانية التمرير الى الاعلى   
//   `Image` لعرض الصور المرفقة بالمشروع  في التطبيق
//   `Column` و `Row` لترتيب العناصر
//  `Icon` لعرض بصور أيقونات واضحة ومميزة
//   `Padding` و `Margin` لتحسين مظهر العناصر وتباعدها
//   `Expanded` و `Flexible` لتوفير  مرونه  للعناصر ضمن واجهة المستخدم
