import 'package:flutter/material.dart';
import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';
import 'package:space_manage_app/screen/TrangChuScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  // Define your screens here
  final List<Widget> _screens = [
    TrangChuScreen(),
    TrangChuScreen(),
    TrangChuScreen(),
  ];

  void _onTabChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          controller: _pageController,
          children: _screens,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
        bottomNavigationBar: ResponsiveNavigationBar(
          selectedIndex: _selectedIndex,
          onTabChange: _onTabChange,
          textStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          navigationBarButtons: const <NavigationBarButton>[
            NavigationBarButton(
              text: 'Trang Chủ',
              icon: Icons.home,
              backgroundGradient: LinearGradient(
                colors: [Colors.yellow, Colors.green, Colors.blue],
              ),
            ),
            NavigationBarButton(
              text: 'Tab 2',
              icon: Icons.star,
              backgroundGradient: LinearGradient(
                colors: [Colors.cyan, Colors.teal],
              ),
            ),
            NavigationBarButton(
              text: 'Tab 3',
              icon: Icons.settings,
              backgroundGradient: LinearGradient(
                colors: [Colors.green, Colors.yellow],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Define your screens here
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Home Screen'));
  }
}

class Tab2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Tab 2 Screen'));
  }
}

class Tab3Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Tab 3 Screen'));
  }
}
