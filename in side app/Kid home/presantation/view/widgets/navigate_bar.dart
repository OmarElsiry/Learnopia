import 'package:flutter/material.dart';
import 'package:educational_kids_game/features/in%20side%20app/Challenges/presantation/view/games_view.dart';
import 'package:educational_kids_game/features/in%20side%20app/Kid%20home/presantation/view/kid_home_view.dart';
import 'package:educational_kids_game/features/in%20side%20app/kid%20profile/presantation/view/kid_profile_view.dart';
import '../../../../../settings/presantation/view/password_settings_view.dart';

class NavigateBar extends StatefulWidget {
  const NavigateBar({super.key});

  @override
  State<NavigateBar> createState() => _NavigateBarState();
}

class _NavigateBarState extends State<NavigateBar> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  final List<Widget> _screens = [
    const KidHomeView(),
    const GamesView(),
    const KidProfileView(),
    const PasswordSettingsView()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  Widget _buildNavItem(IconData icon, String label, bool isSelected) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: isSelected ? Colors.black : Colors.grey[600],
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.black : Colors.grey[600],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics:
            const NeverScrollableScrollPhysics(), // Disable swipe navigation
        children: _screens,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
            right: 16.0, left: 16.0, top: 21.0, bottom: 21.0),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color.fromRGBO(229, 229, 229, 0.8),
            borderRadius: BorderRadius.circular(54),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => _onItemTapped(0),
                child: _buildNavItem(Icons.home, 'Home', _currentIndex == 0),
              ),
              GestureDetector(
                onTap: () => _onItemTapped(1),
                child: _buildNavItem(Icons.games, 'Games', _currentIndex == 1),
              ),
              GestureDetector(
                onTap: () => _onItemTapped(2),
                child:
                    _buildNavItem(Icons.person, 'Profile', _currentIndex == 2),
              ),
              GestureDetector(
                onTap: () => _onItemTapped(3),
                child: _buildNavItem(
                    Icons.settings, 'Settings', _currentIndex == 3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
