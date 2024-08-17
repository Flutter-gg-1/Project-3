import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  final List<BottomNavBarItem> items;

  CustomBottomNavBar({
    required this.currentIndex,
    required this.onTap,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: items.map((item) {
        return BottomNavigationBarItem(
          icon: SvgPicture.asset(
            item.iconPath,
            color: currentIndex == items.indexOf(item)
                ? item.selectedColor
                : item.unselectedColor,
            width: 24,
            height: 24,
          ),
          label: item.label,
        );
      }).toList(),
      selectedItemColor: items[currentIndex].selectedColor,
      unselectedItemColor: items[currentIndex].unselectedColor,
      showUnselectedLabels: true,
      showSelectedLabels: true,
    );
  }
}

class BottomNavBarItem {
  final String iconPath; // Path to the SVG asset
  final String label;
  final Color selectedColor;
  final Color unselectedColor;

  BottomNavBarItem({
    required this.iconPath,
    required this.label,
    required this.selectedColor,
    required this.unselectedColor,
  });
}


// تم إنشاء فئة CustomBottomNavBar كـ StatelessWidget لعرض شريط التنقل السفلي المخصص
// يتم تمرير currentIndex لتحديد العنصر النشط حالياً في شريط التنقل
// يتم تمرير onTap لتحديد السلوك عند النقر على أحد العناصر في شريط التنقل
// يتم تمرير قائمة items والتي تحتوي على تفاصيل كل عنصر في شريط التنقل

// داخل دالة build، يتم استخدام BottomNavigationBar كعنصر رئيسي لعرض شريط التنقل السفلي
// يتم تمرير currentIndex لضبط العنصر النشط في شريط التنقل السفلي
// يتم تمرير onTap لتعريف السلوك عند النقر على أحد العناصر في شريط التنقل السفلي
// يتم تحويل قائمة items إلى قائمة BottomNavigationBarItem باستخدام map
// لكل عنصر في items، يتم عرض الأيقونة باستخدام SvgPicture.asset مع ضبط اللون بناءً على ما إذا كان العنصر نشطاً أم لا
// يتم ضبط خاصية label لعرض النص المرتبط بكل عنصر في شريط التنقل السفلي
// يتم تعيين selectedItemColor لتحديد لون العنصر النشط
// يتم تعيين unselectedItemColor لتحديد لون العناصر غير النشطة
// يتم تفعيل عرض النصوص لكل من العناصر النشطة وغير النشطة من خلال showUnselectedLabels و showSelectedLabels

// تم إنشاء فئة BottomNavBarItem لتخزين تفاصيل كل عنصر في شريط التنقل السفلي
// يتضمن كل عنصر مسار الأيقونة (iconPath) والعنوان (label) والألوان (selectedColor و unselectedColor) لكل من الحالات النشطة وغير النشطة
