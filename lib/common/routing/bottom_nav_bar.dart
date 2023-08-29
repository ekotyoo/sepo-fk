import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      width: double.infinity,
      height: 80,
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          BottomNavItem(
            icon: Icons.home,
            label: 'Beranda',
            onPressed: () => onTap(0),
            selected: currentIndex == 0,
          ),
          BottomNavItem(
            icon: Icons.list,
            label: 'Latihan',
            onPressed: () => onTap(1),
            selected: currentIndex == 1,
          ),
          BottomNavItem(
            icon: Icons.person,
            label: 'Profil',
            onPressed: () => onTap(2),
            selected: currentIndex == 2,
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
    this.selected = false,
    this.selectedColor,
    this.unselectedColor,
  });

  final IconData icon;
  final String label;
  final bool selected;
  final VoidCallback onPressed;
  final Color? selectedColor;
  final Color? unselectedColor;

  @override
  Widget build(BuildContext context) {
    final currentSelectedColor =
        selectedColor ?? Theme.of(context).primaryColor;
    final currentUnselectedColor = unselectedColor ?? Colors.grey;

    final color = selected ? currentSelectedColor : currentUnselectedColor;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 60,
        color: Colors.transparent,
        child: Column(
          children: [
            Icon(
              icon,
              color: color,
            ),
            const SizedBox(height: 8),
            Text(
              label,
              style:
                  Theme.of(context).textTheme.bodySmall?.copyWith(color: color),
            ),
          ],
        ),
      ),
    );
  }
}
