import 'package:flutter/material.dart';
import 'package:pos/view-model/constants/constants.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.context,
    required this.imagePath,
    required this.text,
  });

  final BuildContext context;
  final String imagePath;
  final String text;

  @override
  Widget build(BuildContext context) => Container(
        width: MediaQuery.of(context).size.width * .40,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                CircleAvatar(
                  // backgroundColor: const Color(0xffccd0db),
                  backgroundColor: white,
                  radius: 53,
                  backgroundImage: AssetImage(imagePath),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: Container(
                      height: 35,
                      width: 10,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey.shade50,
                          border: Border.all(color: mainAppColor, width: 1.6),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          text,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 12,
                            color: black,
                            fontWeight: FontWeight.w600,
                            overflow: TextOverflow.visible,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      );
}
