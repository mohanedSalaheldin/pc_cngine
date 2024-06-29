import 'package:computer_engine/src/shared/screen_sizes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

List<Widget> drawerItems = [
  DrawerItem(
    icon: Iconsax.calendar,
    onTap: () {},
    text: 'Appointment',
  ),
  DrawerItem(
    icon: Iconsax.folder_open,
    onTap: () {},
    text: 'Medical file',
  ),
  DrawerItem(
    icon: Iconsax.tick_square,
    onTap: () {},
    text: 'Approvals for treatment',
  ),
  DrawerItem(
    icon: Iconsax.message,
    onTap: () {},
    text: 'Ask your doctor',
  ),
  DrawerItem(
    icon: Iconsax.notification,
    onTap: () {},
    text: 'Notifications',
  ),
  DrawerItem(
    icon: Iconsax.location,
    onTap: () {},
    text: 'Branches',
  ),
  DrawerItem(
    icon: Iconsax.info_circle,
    onTap: () {},
    text: 'Our service',
  ),
  DrawerItem(
    icon: Iconsax.people,
    onTap: () {},
    text: 'Our team',
  ),
  DrawerItem(
    icon: Iconsax.star,
    onTap: () {},
    text: 'Ratings',
  ),
  DrawerItem(
    icon: Iconsax.info_circle,
    onTap: () {},
    text: 'Our service',
  ),
  DrawerItem(
    icon: Iconsax.people,
    onTap: () {},
    text: 'Our team',
  ),
  DrawerItem(
    icon: Iconsax.star,
    onTap: () {},
    text: 'Ratings',
  ),
  DrawerItem(
    icon: Iconsax.info_circle,
    onTap: () {},
    text: 'Our service',
  ),
  DrawerItem(
    icon: Iconsax.people,
    onTap: () {},
    text: 'Our team',
  ),
  DrawerItem(
    icon: Iconsax.star,
    onTap: () {},
    text: 'Ratings',
  ),
  DrawerItem(
    icon: Iconsax.call,
    onTap: () {},
    text: 'Connect with us',
  ),
  DrawerItem(
    icon: Iconsax.calendar_2,
    onTap: () {},
    text: 'Sessions',
  ),
  DrawerItem(
    icon: Iconsax.support,
    onTap: () {},
    text: 'Contact customer service',
  ),
  DrawerItem(
    icon: Iconsax.video,
    onTap: () {},
    text: 'Video library',
  ),
  DrawerItem(
    icon: Iconsax.document,
    onTap: () {},
    text: 'Articles',
  ),
  DrawerItem(
    icon: Iconsax.gallery,
    onTap: () {},
    text: 'Pictures',
  ),
];

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
  });
  final String text;
  final IconData icon;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Icon(icon),
            const Gap(5),
            SizedBox(
              width: ScreenSizes.getWidth(context) / 2.5,
              child: Text(
                text,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.ellipsis),
              ),
            )
          ],
        ),
      ),
    );
  }
}
