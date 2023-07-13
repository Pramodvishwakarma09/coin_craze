import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_stucture/view/pages/search_page.dart';
import 'package:project_stucture/view/pages/setting_page.dart';
import '../../consts/app_colors.dart';
import 'home_page.dart';



class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() =>
      _DashboardPageState();
}

class _DashboardPageState
    extends State<DashboardPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = [
    HomePage(),
    SearchPage(),
    SettingPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SizedBox(
          height: 70.h,
        child: BottomNavigationBar(
          backgroundColor: Color(0xff06041D),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home,),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined,),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: colors.lightgreen,
          unselectedItemColor: colors.lightgreen.withOpacity(.50),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
