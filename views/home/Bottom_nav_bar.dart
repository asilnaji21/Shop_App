import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/controller/my_provider.dart';

import 'package:shop_app/styles/colors.dart';
import 'package:shop_app/views/home/search_screen.dart';

import 'home_screen.dart';
import 'category_screen.dart';
import 'explore_screen.dart';
import 'favorit_screen.dart';

// import '../../component/carsoula_loading.dart';

// import '../../widgets/default_widgets.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({Key? key}) : super(key: key);
  final tabs = [
    // HomeScreen(),
    HomeScreen(),
    CategoryScreen(),
    ExploreScreen(),
    FavoritScreen(),
    PersonScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    NavigationController navigationController =
        Provider.of<NavigationController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none_outlined),
            onPressed: () {},
          )
        ],
        leading: IconButton(
          icon: const Icon(Icons.category),
          onPressed: () {},
        ),
        title: const Text(
          "Home",
          style: TextStyle(fontFamily: 'SemiBold', fontSize: 17),
        ),
        centerTitle: true,
      ),
      body: IndexedStack(
        index: Provider.of<NavigationController>(context, listen: true)
            .selectedIndex,
        children: tabs,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Consumer<NavigationController>(
            builder: (ctx, pro, child) => GNav(
              selectedIndex: pro.selectedIndex,
              onTabChange: (int buttonindex) {
                Provider.of<NavigationController>(context, listen: false)
                    .changeIndex(buttonindex);
              },
              rippleColor: Colors.grey[300]!,
              // gap: 8,
              padding: const EdgeInsets.fromLTRB(9, 10, 37, 16),
              tabBorderRadius: 6,
              tabMargin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              iconSize: 28,
              tabBackgroundColor: defaultColor,
              tabs: const [
                GButton(
                  icon: LineIcons.home,
                  iconColor: grey,
                  iconActiveColor: Colors.white,
                ),
                GButton(
                  icon: LineIcons.shoppingCart,
                  iconColor: grey,
                  iconActiveColor: Colors.white,
                ),
                GButton(
                  icon: LineIcons.search,
                  iconColor: grey,
                  iconActiveColor: Colors.white,
                ),
                GButton(
                  icon: LineIcons.star,
                  iconColor: grey,
                  iconActiveColor: Colors.white,
                ),
                GButton(
                  icon: LineIcons.user,
                  iconColor: grey,
                  iconActiveColor: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
