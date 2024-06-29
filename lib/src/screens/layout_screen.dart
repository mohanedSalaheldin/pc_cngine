import 'package:computer_engine/src/screens/account_screen.dart';
import 'package:computer_engine/src/screens/ask_doc_screen.dart';
import 'package:computer_engine/src/screens/categories_screen.dart';
import 'package:computer_engine/src/screens/home_screen.dart';
import 'package:computer_engine/src/shared/consts.dart';
import 'package:computer_engine/src/shared/screen_sizes.dart';
import 'package:computer_engine/src/widgets/drower_elements_list.dart';
import 'package:computer_engine/src/widgets/layout_screen_list.dart';
import 'package:computer_engine/src/widgets/nav_bar_button,.dart';
import 'package:computer_engine/src/widgets/notification_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:gap/gap.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({
    super.key,
  });

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int currentIndex = 0;

  PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    var bottomAppBar = BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      elevation: 10.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NavBarBotton(
                    text: 'Home',
                    icon: Iconsax.home_1,
                    isSelected: currentIndex == 0,
                    onPressed: () {
                      setState(() {
                        currentIndex = 0;
                      });
                    },
                  ),
                  NavBarBotton(
                    text: 'Categories',
                    icon: Iconsax.shopping_bag,
                    isSelected: currentIndex == 1,
                    onPressed: () {
                      setState(() {
                        currentIndex = 1;
                      });
                    },
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NavBarBotton(
                    text: 'Ask Doc',
                    icon: Iconsax.message,
                    isSelected: currentIndex == 2,
                    onPressed: () {
                      setState(() {
                        currentIndex = 2;
                      });
                    },
                  ),
                  NavBarBotton(
                    text: 'Account',
                    icon: Iconsax.user_edit,
                    isSelected: currentIndex == 3,
                    onPressed: () {
                      setState(() {
                        currentIndex = 3;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    return Scaffold(
      appBar: buildLayoutAppbar(
        isInHomeScreen: currentIndex == 0,
        title: titles[currentIndex],
      ),
      drawer: Drawer(
        width: ScreenSizes.getWidth(context) / 1.75,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
        )),
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(vertical: 20.0),
          child: Column(
            children: [
              SizedBox(
                width: ScreenSizes.getWidth(context) / 1.75,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        child: CircleAvatar(
                          radius: 23,
                          backgroundImage:
                              AssetImage('assets/images/man_profile.jpg'),
                        ),
                      ),
                      const Gap(5.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Mohaned Salah',
                              style: TextStyle(
                                fontSize: 15.0,
                              )),
                          Text('someone@gmail.com',
                              style:
                                  TextStyle(fontSize: 14.0, color: mainColor)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: drawerItems,
                ),
              ),
              DrawerItem(
                icon: Iconsax.logout,
                onTap: () {},
                text: 'Log out',
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: HexColor("#7aa340"),
        child: const Icon(Iconsax.calendar_edit),
      ),
      body: PageStorage(
        bucket: bucket,
        child: screens[currentIndex],
      ),
      bottomNavigationBar: bottomAppBar,
    );
  }

// -----------------------------------------APPBAR------------------------------
  AppBar buildLayoutAppbar({
    required bool isInHomeScreen,
    required Widget title,
  }) {
    return AppBar(
      titleSpacing: 0,
      backgroundColor: mainColor,
      leading: isInHomeScreen
          ? AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              child: const NotificationButton(),
            )
          : IconButton(
              icon: const Icon(
                Iconsax.arrow_left_3,
                size: 30.0,
              ),
              onPressed: () {
                setState(() {
                  currentIndex = 0;
                });
              },
            ),
      actions: [
        isInHomeScreen
            ? Builder(
                builder: (context) {
                  return IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  );
                },
              )
            : AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                child: const NotificationButton(),
              ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(66.0),
        child: Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 12.0),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(1.0, 0.0),
                    end: const Offset(0.0, 0.0),
                  ).animate(animation),
                  child: child,
                );
              },
              child: title,
            ),
          ),
        ),
      ),
    );
  }
}


