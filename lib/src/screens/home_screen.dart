import 'package:computer_engine/src/shared/consts.dart';
import 'package:computer_engine/src/shared/screen_sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double containerHign = 0;
  void _changHight() {
    Future.delayed(const Duration(milliseconds: 50), () {
      setState(() {
        containerHign = 60;
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _changHight();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#f9f9f9'),
      // appBar: AppBar(),

      body: Column(
        children: [
          // Hero(
          //   tag: 'appbar',
          //   child: AnimatedContainer(
          //     curve: Curves.linear,
          //     duration: const Duration(milliseconds: 50),
          //     height: containerHign,
          //     width: double.infinity,
          //     color: mainColor,
          //     child: const Padding(
          //       padding: EdgeInsets.only(
          //         left: 8.0,
          //         bottom: 8.0,
          //       ),
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         mainAxisAlignment: MainAxisAlignment.start,
          //         children: [
          //           Text(
          //             "Welcome back, Mohaned",
          //             style: TextStyle(
          //               fontSize: 14,
          //               fontWeight: FontWeight.w400,
          //               color: Colors.white,
          //             ),
          //           ),
          //           Text(
          //             "Stay healthy!",
          //             style: TextStyle(
          //               fontSize: 18,
          //               fontWeight: FontWeight.w500,
          //               color: Colors.white,
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: const [
                  HomeGridItem(
                    text: 'Appontment',
                    imagePath: 'assets/images/appointment.png',
                  ),
                  HomeGridItem(
                    text: 'Medical file',
                    imagePath: 'assets/images/medical_file.png',
                  ),
                  HomeGridItem(
                    text: 'Ask your doctor',
                    imagePath: 'assets/images/ask_doc.png',
                  ),
                  HomeGridItem(
                    text: 'Customer care',
                    imagePath: 'assets/images/customer_serv.png',
                  ),
                  HomeGridItem(
                    text: 'Account setting',
                    imagePath: 'assets/images/account_edit.png',
                  ),
                  HomeGridItem(
                    text: 'Services',
                    imagePath: 'assets/images/servs.png',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeGridItem extends StatelessWidget {
  const HomeGridItem({
    super.key,
    required this.text,
    required this.imagePath,
  });
  final String text;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSizes.getHeight(context) / 5.5,
      width: ScreenSizes.getHeight(context) / 5.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          const Gap(10),
          Image.asset(
            imagePath,
            height: ScreenSizes.getHeight(context) / 5.5 - 20,
            width: ScreenSizes.getHeight(context) / 5.5 - 20,
          ),
        ],
      ),
    );
  }
}
