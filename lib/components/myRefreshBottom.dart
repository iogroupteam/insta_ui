import 'package:flutter/material.dart';

class MyRefreshBottom extends StatelessWidget {
  const MyRefreshBottom({
    Key? key,
    required this.icon,
    required this.widget,
  }) : super(key: key);

  final IconData icon;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => widget));
      },
      child: CircleAvatar(
        backgroundColor: const Color(0xffFFB950),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
