import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:project3/home.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFBF5F2),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 89, 0, 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0.6, 65),
                child: RichText(
                  text: TextSpan(
                    style: GoogleFonts.getFont(
                      'Ribeye Marrow',
                      fontWeight: FontWeight.w400,
                      fontSize: 40,
                      color: Color(0xFF000000),
                    ),
                    children: [
                      TextSpan(
                        text: 'M',
                        style: GoogleFonts.getFont(
                          'Ribeye',
                          fontWeight: FontWeight.w400,
                          fontSize: 40,
                          height: 1.3,
                          color: Color(0xFFEB9F4A),
                        ),
                      ),
                      TextSpan(
                        text: 'E',
                        style: GoogleFonts.getFont(
                          'Ribeye',
                          fontWeight: FontWeight.w400,
                          fontSize: 40,
                          height: 1.3,
                          color: Color(0xFF77B29F),
                        ),
                      ),
                      TextSpan(
                        text: 'N',
                        style: GoogleFonts.getFont(
                          'Ribeye',
                          fontWeight: FontWeight.w400,
                          fontSize: 40,
                          height: 1.3,
                          color: Color(0xFFAB70DF),
                        ),
                      ),
                      TextSpan(
                        text: 'T',
                        style: GoogleFonts.getFont(
                          'Ribeye',
                          fontWeight: FontWeight.w400,
                          fontSize: 40,
                          height: 1.3,
                          color: Color(0xFF6884F6),
                        ),
                      ),
                      TextSpan(
                        text: 'A',
                        style: GoogleFonts.getFont(
                          'Ribeye',
                          fontWeight: FontWeight.w400,
                          fontSize: 40,
                          height: 1.3,
                          color: Color(0xFFECC055),
                        ),
                      ),
                      TextSpan(
                        text: 'L ',
                        style: GoogleFonts.getFont(
                          'Ribeye',
                          fontWeight: FontWeight.w400,
                          fontSize: 40,
                          height: 1.3,
                          color: Color(0xFF77B29F),
                        ),
                      ),
                      TextSpan(
                        text: '^',
                        style: GoogleFonts.getFont(
                          'Ribeye',
                          fontWeight: FontWeight.w400,
                          fontSize: 40,
                          height: 1.3,
                          color: Color(0xFFAB70DF),
                        ),
                      ),
                      TextSpan(
                        text: 'u',
                        style: GoogleFonts.getFont(
                          'Ribeye',
                          fontWeight: FontWeight.w400,
                          fontSize: 40,
                          height: 1.3,
                          color: Color(0xFF6884F6),
                        ),
                      ),
                      TextSpan(
                        text: 'p',
                        style: GoogleFonts.getFont(
                          'Ribeye',
                          fontWeight: FontWeight.w400,
                          fontSize: 40,
                          height: 1.3,
                          color: Color(0xFFECC055),
                        ),
                      ),
                      TextSpan(
                        text: '^',
                        style: GoogleFonts.getFont(
                          'Ribeye',
                          fontWeight: FontWeight.w400,
                          fontSize: 40,
                          height: 1.3,
                          color: Color(0xFF77B29F),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Username",
                    hintStyle: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.fromLTRB(169.8, 0, 0, 24),
                child: Text(
                  'Forgot Password?',
                  style: GoogleFonts.getFont(
                    'Roboto',
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 41),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFEB9F4A),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Container(
                      width: 316,
                      padding: EdgeInsets.fromLTRB(0, 15, 1.1, 15),
                      child: Center(
                        child: Text(
                          'GO',
                          style: GoogleFonts.getFont(
                            'Roboto',
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.fromLTRB(4.6, 0, 0, 15),
                child: RichText(
                  text: TextSpan(
                    text: 'Don’t have account yet? ',
                    style: GoogleFonts.getFont(
                      'Roboto',
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Color(0xFF000000),
                    ),
                    children: [
                      TextSpan(
                        text: 'Sign Up',
                        style: GoogleFonts.getFont(
                          'Roboto',
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          height: 1.3,
                          color: Color(0xFF77B29F),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/screenshot_20220125_at_1241.png',
                    ),
                  ),
                ),
                child: Container(
                  width: 428,
                  height: 300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// تم عمل في هذه الواجهة لتصميم شاشة تسجيل الدخول.
// الواجهة تحتوي على خلفية دائرية مغطاة بلون فاتح.
// عنوان التطبيق مميز بألوان مختلفة لكل حرف من النص "MENTAL ^up^" باستخدام خطوط "Ribeye".
// هناك حقول إدخال لتسجيل اسم المستخدم وكلمة المرور، مع تصميم مخصص للحواف ولون الخلفية.
// يوجد رابط "نسيت كلمة المرور؟" للانتقال إلى صفحة استرداد كلمة المرور.
// الزر "GO" مخصص بلون خلفية برتقالي، مع نص أبيض، ويؤدي إلى صفحة الشاشة الرئيسية عند النقر عليه.
// أسفل الزر، هناك رابط "ليس لديك حساب بعد؟ سجل الآن" بلون أزرق، لتوجيه المستخدمين إلى صفحة التسجيل.
// في أسفل الصفحة، هناك صورة غلاف تعرض صورة خلفية.
// يتم استخدام الحاويات وتنسيقات النصوص بشكل مناسب لضمان تجربة مستخدم مرنة وجذابة.
