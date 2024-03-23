import 'package:flutter/material.dart';

class WelcomeUserListTile extends StatelessWidget {
  const WelcomeUserListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: const Text(
          'Good morning,',
          style: TextStyle(
            color: Color(0xFF111827),
            fontSize: 16,
            fontFamily: 'Alexandria',
            fontWeight: FontWeight.w400,
            //height: 0.09,
          ),
        ),
        subtitle: const Text(
          'Abdullah Khaled\n',
          style: TextStyle(
            color: Color(0xFF111827),
            fontSize: 24,
            fontFamily: 'Alexandria',
            fontWeight: FontWeight.w700,
            height: 1.8,
          ),
        ),
        trailing: Container(
          width: 48,
          height: 48,
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: OvalBorder(
              side: BorderSide(width: 1, color: Color(0xFFE5E7EB)),
            ),
          ),
          child: const Icon(
            Icons.watch_later_outlined,
            color: Colors.black,
          ),
        ));
  }
}
