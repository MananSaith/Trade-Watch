import 'package:figma_design2/material/colorclass.dart';
import 'package:figma_design2/pages/navigator_page/lockerFloder/locker_page.dart';
import 'package:figma_design2/pages/navigator_page/homeFloder/my_home.dart';
import 'package:figma_design2/pages/navigator_page/setting_page.dart';
import 'package:flutter/material.dart';
class NavigatorPage extends StatefulWidget {
  const NavigatorPage({super.key});

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  List<Widget> listOfPages =const [MyHome(),LockerPage(),SettingPage()];
  int currentPage=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: listOfPages,
      ),

        bottomNavigationBar: BottomNavigationBar(
          onTap: (v){
            setState(() {
              currentPage=v;
            });

          },
          iconSize: 30,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          currentIndex: currentPage,
          items:  [
            BottomNavigationBarItem(
              icon: Image.asset('assets/iconsFigma/Home.png',color: currentPage==0?AppColors.appThemeColor:AppColors.appColorHintInput),
              label: 'Home',
            ),

            BottomNavigationBarItem(
              icon: Image.asset('assets/iconsFigma/Activity.png',color: currentPage==1?AppColors.appThemeColor:AppColors.appColorHintInput),
              label: 'Locker',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/iconsFigma/Setting.png',color: currentPage==2?AppColors.appThemeColor:AppColors.appColorHintInput),
              label: 'Settings',
            ),
          ],
        )

    );
  }
}
