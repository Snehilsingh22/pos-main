import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:pos/view-model/constants/constants.dart';

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({Key? key}) : super(key: key);

  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  Map<String, List<FoodModel>> foodItems = {
    "VADAPAV": [
      FoodModel(foodName: "CHEESE VADAPAV", foodCode: '11538', price: 60),
      FoodModel(foodName: "MASALA VADAPAV", foodCode: '11537', price: 40),
      FoodModel(foodName: "VADAPAV", foodCode: '11536', price: 30),
    ],
    "MILK": [
      FoodModel(foodName: "AMUL TAZAA", foodCode: '11477', price: 25),
    ],
    "KULCHAS": [
      FoodModel(foodName: "ALLO KULCHA", foodCode: '11480', price: 140),
      FoodModel(foodName: "BUTTER KULCHA", foodCode: '11478', price: 130),
      FoodModel(foodName: "CHEESE CHILLI KULCHA", foodCode: '', price: 190),
      FoodModel(foodName: "CHEESE GARLIC KULCHA", foodCode: '', price: 190),
      FoodModel(foodName: "CHEESE PANEER KULCHA", foodCode: '', price: 100),
      FoodModel(foodName: "CHUR CHUR KULCHA", foodCode: '11486', price: 180),
      FoodModel(foodName: "GARLIC KULCHA", foodCode: '11493', price: 140),
      FoodModel(foodName: "GOBI KULCHA", foodCode: '11481', price: 140),
      FoodModel(foodName: "KULCHA HUB SPECIAL", foodCode: '', price: 250),
      FoodModel(foodName: "KULCHA PLATTER", foodCode: '11493', price: 230),
      FoodModel(foodName: "MASALA KULCHA", foodCode: '11479', price: 130),
      FoodModel(foodName: "MIX VEG KULCHA", foodCode: '11484', price: 150),
      FoodModel(foodName: "ONION KULCHA", foodCode: '11482', price: 140),
      FoodModel(foodName: "PANEER CHILLI KULCHA", foodCode: '', price: 180),
      FoodModel(
          foodName: "PANEER GARLIC KULCHA", foodCode: '11479', price: 180),
      FoodModel(foodName: "PANEER KULCHA", foodCode: '11487', price: 180),
    ],
    "PAPAD": [
      FoodModel(foodName: "CHEESE MASALA PAPAD", foodCode: '', price: 60),
      FoodModel(foodName: "FRY PAPAD", foodCode: '11496', price: 25),
      FoodModel(foodName: "MASALA PAPAD", foodCode: '11497', price: 40),
      FoodModel(foodName: "ROASTED PAPAD", foodCode: '11538', price: 20),
    ],
    "LASSI": [
      FoodModel(foodName: "CHOCOLATE LASSI", foodCode: '11505', price: 100),
      FoodModel(foodName: "DRY FRUIT LASSI", foodCode: '11506', price: 120),
      FoodModel(foodName: "GHORVU", foodCode: '11508', price: 30),
      FoodModel(foodName: "KULCHA HUB SPECIAL", foodCode: '', price: 150),
      FoodModel(foodName: "ROSE LASSI", foodCode: '11504', price: 100),
      FoodModel(foodName: "SALTED LASSI", foodCode: '11502', price: 70),
      FoodModel(foodName: "SWEET LASSI", foodCode: '11503', price: 80),
    ],
    "RAITA": [
      FoodModel(foodName: "BOONDI RAITA", foodCode: '11509', price: 60),
      FoodModel(foodName: "CURD", foodCode: '11509', price: 50),
      FoodModel(foodName: "VEG RAITA", foodCode: '11510', price: 70),
    ],
    "EXTRA": [
      FoodModel(foodName: "CHEESE", foodCode: '11485', price: 50),
      FoodModel(foodName: "CHOLE", foodCode: '11499', price: 60),
      FoodModel(foodName: "DAL MAKHANI", foodCode: '11501', price: 40),
      FoodModel(foodName: "RAJMA", foodCode: '11500', price: 60),
    ],
    "SANDWICH": [
      FoodModel(foodName: "MASALA SANDWICH", foodCode: '11538', price: 40),
      FoodModel(foodName: "CHOCOLATE SANDWICH", foodCode: '', price: 70),
      FoodModel(foodName: "MAHARAJA SANDWICH", foodCode: '11518', price: 160),
      FoodModel(foodName: "MASALA CHEESE SANDWICH", foodCode: '', price: 140),
      FoodModel(foodName: "PIZZA SANDWICH", foodCode: '11517', price: 150),
      FoodModel(foodName: "TANDOORI PANEER SANDWICH", foodCode: '', price: 100),
      FoodModel(foodName: "VEG CHEESE SANDWICH", foodCode: '', price: 100),
      FoodModel(foodName: "VEG GARLIC SANDWICH", foodCode: '11538', price: 60),
    ],
    "BURGER": [
      FoodModel(foodName: "DOUBLE CHEESE BURGER", foodCode: '', price: 100),
      FoodModel(foodName: "PANEER TANDOORI BURGER", foodCode: '', price: 120),
      FoodModel(foodName: "SPECIAL BURGER", foodCode: '11524', price: 120),
      FoodModel(foodName: "VEG BURGER", foodCode: '11520', price: 60),
      FoodModel(foodName: "VEG CHEESE BURGER", foodCode: '', price: 60),
    ],
    "PIZZA": [
      FoodModel(foodName: "ITALIAN PIZZA", foodCode: '11526', price: 180),
      FoodModel(foodName: "MARGHERITA PIZZA", foodCode: '11525', price: 150),
      FoodModel(foodName: "MAXICAN PIZZA", foodCode: '11526', price: 180),
      FoodModel(foodName: "SPECIAL PIZZA", foodCode: '11529', price: 180),
      FoodModel(
          foodName: "TANDOORI PANEER PIZZA", foodCode: '11526', price: 180),
    ],
    "MAGGI": [
      FoodModel(foodName: "BUTTER CHEESE MAGGI", foodCode: '', price: 120),
      FoodModel(foodName: "BUTTER MAGGI", foodCode: '11531', price: 70),
      FoodModel(foodName: "CHEESE MAGGI", foodCode: '11532', price: 100),
      FoodModel(foodName: "MAGGI", foodCode: '11530', price: 60),
    ],
    "TEA": [
      FoodModel(foodName: "ELAICHI TEA", foodCode: '11542', price: 30),
      FoodModel(foodName: "GINGER PUDINA TEA", foodCode: '11536', price: 40),
      FoodModel(foodName: "REGULAR TEA", foodCode: '11536', price: 30),
      FoodModel(foodName: "SUGAR TEA", foodCode: '11542', price: 30),
    ],
    "COFFEE": [
      FoodModel(foodName: "BLACK COFFEE", foodCode: '11540', price: 40),
      FoodModel(foodName: "HOT BLACK COFFEE", foodCode: '11541', price: 40),
    ],
  };

  List<String> foodCategories = [
    "VADAPAV",
    "MILK",
    "KULCHAS",
    "PAPAD",
    "LASSI",
    "RAITA",
    "EXTRA",
    "SANDWICH",
    "BURGER",
    "PIZZA",
    "MAGGI",
    "TEA",
    "COFFEE",
  ];

  int currentCategoryIndex = 0;
  int currentFoodIndex = 0;
  final player = AudioPlayer();
  void _beep() {
    player.play(AssetSource('aseets/sounds/beep.mp3'));
  }

// @override
// void dispose(){
//   super.dispose();
//   _audioP
// }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Restaurants',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.all(5),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: foodCategories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        currentCategoryIndex = index;
                        currentFoodIndex =
                            0; // Reset the food index when changing categories
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.all(5),
                      width: 100,
                      height: 45,
                      decoration: BoxDecoration(
                        color: currentCategoryIndex == index
                            ? Color.fromARGB(255, 87, 135, 159)
                            : Colors.white,
                        borderRadius: currentCategoryIndex == index
                            ? BorderRadius.circular(15)
                            : BorderRadius.circular(10),
                        border: currentCategoryIndex == index
                            ? Border.all(color: mainAppColor, width: 2)
                            : Border.all(color: Colors.black54, width: 1.6),
                      ),
                      child: Center(
                        child: Text(
                          foodCategories[index],
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: currentCategoryIndex == index
                                ? Colors.white
                                : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            /// MAIN BODY
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  // childAspectRatio: 1.0,
                ),
                itemCount:
                    foodItems[foodCategories[currentCategoryIndex]]?.length ??
                        0,
                itemBuilder: (ctx, index) {
                  return GestureDetector(
                    onTap: () {
                      _beep();
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 200,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/images/kulcha.jpg'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.3),
                                  BlendMode.darken),
                            ),
                            // border: Border.all(color: primaryColor),
                          ),
                          // elevation: 10,
                          margin: const EdgeInsets.all(1.5),

                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  foodItems[foodCategories[
                                          currentCategoryIndex]]![index]
                                      .foodName,
                                  textAlign: TextAlign.center,
                                  maxLines: 2,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 13,
                                  ),
                                ),
                                Text(
                                  "${foodItems[foodCategories[currentCategoryIndex]]![index].foodCode}",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   height: MediaQuery.of(context).size.height * 2,
                        // ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 3),
                            child: Container(
                              height: 33,
                              width: 10,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey.shade50,
                                  border: Border.all(
                                      color: mainAppColor, width: 1.6),
                                  borderRadius: BorderRadius.circular(6)),
                              child: Center(
                                child: Text(
                                  "₹ ${foodItems[foodCategories[currentCategoryIndex]]![index].price}",
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FoodModel {
  String foodName;
  String foodCode;
  int price;
  FoodModel({
    required this.foodName,
    required this.foodCode,
    required this.price,
  });
}
