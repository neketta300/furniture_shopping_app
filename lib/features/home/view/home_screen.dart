import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/router/router.dart';
import 'package:provider/provider.dart';

import '../../../ui/responsive/responsive.dart';
import '../home.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    final r = Provider.of<Responsive>(context);
    return AutoTabsRouter(
      routes: [HomeTabRoute()],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: Container(
            width: double.infinity,
            height: r.hp(75),
            decoration: BoxDecoration(
              color: const Color(0xFFFFFFFF),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, -2),
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 50,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BottomAppBarButton(
                  pathToIcon: 'images/clarity_home-solid.svg',
                  isSelected: tabsRouter.activeIndex == 0,
                  onTap: () => _openPage(0, tabsRouter),
                ),
                BottomAppBarButton(
                  pathToIcon: 'images/marker1.svg',
                  isSelected: tabsRouter.activeIndex == 1,
                  onTap: () => _openPage(1, tabsRouter),
                ),
                BottomAppBarButton(
                  pathToIcon: 'images/bell.svg',
                  isSelected: tabsRouter.activeIndex == 2,
                  onTap: () => _openPage(2, tabsRouter),
                ),
                BottomAppBarButton(
                  pathToIcon: 'images/bi_person.svg',
                  isSelected: tabsRouter.activeIndex == 3,
                  onTap: () => _openPage(3, tabsRouter),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _openPage(int index, TabsRouter tabsRouter) {
    setState(() {
      _selectedPageIndex = index;
    });
    tabsRouter.setActiveIndex(_selectedPageIndex);
  }
}
