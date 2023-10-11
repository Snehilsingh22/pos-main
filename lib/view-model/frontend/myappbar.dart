import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // backgroundColor: Colors.blueGrey.shade50,
      backgroundColor: Color(0xfff1f0f6),
      // leading: IconButton(
      //     onPressed: () {

      //     },
      //     icon: Icon(
      //       Icons.arrow_back_ios,
      //       size: 18,
      //     )),
      automaticallyImplyLeading: false,
      title: TextField(
        controller: _controller,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          hintText: "Search",
          hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          border: InputBorder.none,
          suffixIcon: IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            _controller.clear();
          },
        ),
      ],
    );
  }
}
