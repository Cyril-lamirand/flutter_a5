import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget{
  final String title;
  const AppBarWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return AppBar(
      title: Text(title),
      centerTitle: true,
      backgroundColor: Colors.deepPurple,
      actions: [
        IconButton(onPressed: () {},
            icon: const Icon(Icons.calendar_month)
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}