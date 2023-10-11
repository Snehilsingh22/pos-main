import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pos/view-model/constants/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final SearchController = TextEditingController();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white, // <-- SEE HERE
          statusBarIconBrightness:
              Brightness.dark, //<-- For Android SEE HERE (dark icons)
          statusBarBrightness:
              Brightness.light, //<-- For iOS SEE HERE (dark icons)
        ),
        title: Text(''),
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.account_circle,
                  color: primaryColor,
                  size: 35,
                )),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
        child: TextField(
          controller: SearchController,

          cursorColor: Colors.amber,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: primaryColor,
            ),
            hintText: 'Dishes,restaurants... ',
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.black38),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: primaryColor),
            ),
          ),
          // controller: vehicleController,
        ),
      ),
    );
  }
}
