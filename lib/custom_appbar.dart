import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.backgroundColor = const Color.fromARGB(255, 121, 214, 160),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 17.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      backgroundColor: backgroundColor,
      // 왼쪽 메뉴
      leading: IconButton(
        onPressed: (){},
        icon: Icon(Icons.menu),
      ),
      actions: [
        // 우측 상단 로고
        Padding(
          padding: EdgeInsets.only(
            right: 30.0,
            top: 10.0,
            bottom: 10.0,
          ), // 오른쪽 패딩
          child: GestureDetector(
            onTap: (){

            },
            child: Image.asset('assets/images/silverWatchLogo.png'),
          ),
        )
      ]
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
