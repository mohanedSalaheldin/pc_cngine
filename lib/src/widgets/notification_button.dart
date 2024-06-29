
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({
    super.key,
  });
  final String heroTag = 'notification';

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: heroTag,
      child: Container(
        margin: const EdgeInsets.all(10),
        height: 35.0,
        width: 35.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: InkWell(
          onTap: () {
            print("object");
          },
          child: Stack(
            children: [
              const Align(
                alignment: Alignment.center,
                child: Icon(
                  Iconsax.notification,
                  color: Colors.black,
                ),
              ),
              Align(
                alignment: const Alignment(-.6, -.6),
                child: Container(
                  height: 9.0,
                  width: 9.0,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
