
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project3/bottom_nav_bar.dart';
import 'package:project3/challenges.dart';
import 'package:project3/my_progress.dart';
import 'package:project3/profile.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    MyProgress(),
    Challenges(),
    ProfileScreen(),
    Center(
      child: Text("Settings"),
    )
  ];

  final List<BottomNavBarItem> _navBarItems = [
    BottomNavBarItem(
      iconPath: 'assets/vectors/vector_6_x2.svg',
      label: '',
      selectedColor: Colors.green,
      unselectedColor: Colors.grey,
    ),
    BottomNavBarItem(
      iconPath: 'assets/vectors/vector_4_x2.svg',
      label: '',
      selectedColor: Colors.orange,
      unselectedColor: Colors.grey,
    ),
    BottomNavBarItem(
      iconPath: 'assets/vectors/vector_20_x2.svg',
      label: '',
      selectedColor: Colors.purple,
      unselectedColor: Colors.grey,
    ),
    BottomNavBarItem(
      iconPath: 'assets/vectors/vector_5_x2.svg',
      label: '',
      selectedColor: Colors.blue,
      unselectedColor: Colors.grey,
    ),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: _navBarItems,
      ),
    );
  }
}


// تم إنشاء فئة HomeScreen كوريثة لـ StatefulWidget لتتمكن من إدارة حالة الصفحة بشكل ديناميكي
// تم إنشاء حالة الشاشة HomeScreen في فئة _HomeScreenState للتحكم في حالة الصفحة
// تم تعريف متغير _currentIndex لتتبع الصفحة الحالية التي يعرضها المستخدم
// تم إنشاء قائمة _pages تحتوي على الصفحات الأربع التي سيتم عرضها عند التبديل بين علامات التبويب
// تم إنشاء قائمة _navBarItems تحتوي على عناصر شريط التنقل السفلي مع إعدادات الأيقونات والألوان
// تم تعريف دالة _onTabTapped لتحديث _currentIndex عند النقر على أحد علامات التبويب، مما يؤدي إلى تغيير الصفحة المعروضة
// تم استخدام عنصر Scaffold لتوفير الهيكل الرئيسي للشاشة، بما في ذلك الجسم وشريط التنقل السفلي
// تم استخدام IndexedStack في عنصر body لعرض الصفحة المقابلة للـ _currentIndex، مما يحافظ على الحالة عبر الصفحات
// تم استخدام CustomBottomNavBar كعنصر bottomNavigationBar لتخصيص شريط التنقل السفلي مع العناصر المحددة
