import 'dart:ui';

import 'package:flutter/material.dart';

class BottomNavBarProyect extends StatelessWidget {
  const BottomNavBarProyect({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: const Color.fromARGB(255, 87, 87, 87).withOpacity(0.6),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(32),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: 1,
            type: BottomNavigationBarType.fixed,
            elevation: 0,

            items: const [
              
              BottomNavigationBarItem(
                icon: IconActive(
                    icon: Icons.home_outlined, color: Colors.transparent),
                label: '',
                activeIcon:
                    IconActive(icon: Icons.home_outlined, color: Colors.black45),
              ),
              BottomNavigationBarItem(
                icon: IconActive(icon: Icons.search, color: Colors.transparent),
                label: '',
                activeIcon:
                    IconActive(icon: Icons.search, color: Colors.black45),
              ),
              BottomNavigationBarItem(
                icon: IconActive(
                    icon: Icons.smart_display_outlined,
                    color: Colors.transparent),
                label: '',
                activeIcon: IconActive(
                    icon: Icons.smart_display_outlined, color: Colors.black45),
              ),
              BottomNavigationBarItem(
                icon:
                    IconActive(icon: Icons.download, color: Colors.transparent),
                label: '',
                activeIcon:
                    IconActive(icon: Icons.download, color: Colors.black45),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconActive extends StatelessWidget {
  final IconData icon;
  final Color color;
  const IconActive({
    super.key,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 74,
      height: 48,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(32)),
      child: Icon(icon),
    );
  }
}