import 'package:audiofileplayer/audiofileplayer.dart';
import 'package:flutter/material.dart';
import 'package:pos/view-model/constants/constants.dart';
import 'package:pos/view-model/frontend/menuItems.dart';
import 'package:pos/view-model/frontend/myappbar.dart';

class ProductDashBoard extends StatefulWidget {
  const ProductDashBoard({super.key});

  @override
  State<ProductDashBoard> createState() => _ProductDashBoardState();
}

class _ProductDashBoardState extends State<ProductDashBoard> {
  bool isTapped = false;
  List<String> itemImages = [
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
    "$imagesPath/pizza.png",
  ];

  // List<String> itemName = [
  //   "Masala Sandwich",
  //   "Aloo Kulcha",
  //   "Amul Tazaa",
  //   "Black Coffee",
  //   "Boondi Raita",
  //   "Butter Cheese",
  //   'Butter Kulcha',
  //   'Butter Maggi',
  //   'Cheese',
  //   'Cheese Chilli Kulcha',
  //   "Cheese Garlic Kulcha",
  //   "Cheese Maggi",
  //   "Cheese Masala",
  //   "Cheese Paneer Kulcha",
  //   "Cheese Vadapav",
  //   "Chocolate Lassi",
  //   "Chocolate Sandwich",
  //   "Chole",
  //   "Chur chur kulcha",
  //   "Curd",
  //   "Dal Makhni"
  // ];

  late String itemValue;
  List<String> itemName = [
    "MASALA SANDWICH",
    "ALOO KULCHA",
    "AMUL TAZAA",
    "BLACK COFFEE",
    "BOONDI RAITA",
    "BUTTER CHEESE MAGGI",
    'BUTTER KULCHA',
    'BUTTER MAGGI',
    'CHEESE',
    'CHEESE CHILLI KULCHA',
    "CHEESE GARLIC KULCHA",
    "CHEESE MAGGI",
    "CHEESE MASALA PAPAD",
    "CHEESE PANEER KULCHA",
    "CHEESE VADAPAV",
    "CHOCOLATE LASSI",
    "CHOCCOLATE SANDWICH",
    "CHOLE",
    "CHUR CHUR KULCHA",
    "CURD",
    "DAL MAKHANI",
    'DOUBLE CHEESE BURGER',
    'DRY FRUIT LASSI',
    'ELAICHI TEA',
    'FRY PAPAD',
    'GARLIC KULCHA',
    'GHORVU',
    'GINGER PUDINA TEA',
    'GOBI KULCHA',
    'HOT BLACK COFFEE',
    'ITALIAN PIZZA',
    'KULCHA SPECIAL',
    'KULCHA HUB',
    'KULCHA PLATTER',
    'MAGGI',
    'MAHARAJA SANDWICH',
    'MARGHERITA PIZZA',
    'MASALA CHEESE SANDWICH',
    'MASALA KULCHA',
    'MASALA PAPAD',
    'MASALA VADAPAV',
    'MAXICAN PIZZA',
    'MIX VEG KULCHA',
    'ONION KULCHA',
    "PANEER CHILLI KULCHA",
    'PANEER GARLIC KULCHA',
    'PANEER KULCHA',
    'PANEER TANDURI BURGER',
    'PIZZA SANDWICH',
    'RAJMA',
    'REGULAR TEA',
    'ROSE LASSI',
    'ROSTED PAPAD',
    'SALTED LASSI',
    'SPECIAL BURGER',
    'SPECIAL PIZZA',
    'SUGAR FREE TEA',
    'SWEET LASSI',
    'TANDOORI PANEER PIZZA',
    'TANDOORI PANEER SANDWICH',
    'VADAPAV',
    'VEG CHEESE SANDWICH',
    'VEG GRILLED SANDWICH',
    'VEG RAITA',
    'VEG BURGER',
    'VEG CHEESE BURGER'
  ];
  Map<String, int> itemPriceCount = {};
  late int count = 0;

  Map<String, int> itemPrices = {
    "MASALA SANDWICH": 40,
    "ALOO KULCHA": 140,
    "AMUL TAZAA": 30,
    "BLACK COFFEE": 40,
    "BOONDI RAITA": 60,
    "BUTTER CHEESE MAGGI": 120,
    'BUTTER KULCHA': 130,
    'BUTTER MAGGI': 70,
    'CHEESE': 50,
    'CHEESE CHILLI KULCHA': 190,
    "CHEESE GARLIC KULCHA": 190,
    "CHEESE MAGGI": 100,
    "CHEESE MASALA PAPAD": 60,
    "CHEESE PANEER KULCHA": 200,
    "CHEESE VADAPAV": 60,
    "CHOCOLATE LASSI": 100,
    "CHOCCOLATE SANDWICH": 70,
    "CHOLE": 60,
    "CHUR CHUR KULCHA": 180,
    "CURD": 50,
    "DAL MAKHANI": 80,
    'DOUBLE CHEESE BURGER': 100,
    'DRY FRUIT LASSI': 120,
    'ELAICHI TEA': 30,
    'FRY PAPAD': 25,
    'GARLIC KULCHA': 140,
    'GHORVU': 30,
    'GINGER PUDINA TEA': 40,
    'GOBI KULCHA': 140,
    'HOT BLACK COFFEE': 40,
    'ITALIAN PIZZA': 180,
    'KULCHA SPECIAL': 250,
    'KULCHA HUB': 150,
    'KULCHA PLATTER': 230,
    'MAGGI': 60,
    'MAHARAJA SANDWICH': 160,
    'MARGHERITA PIZZA': 150,
    'MASALA CHEESE SANDWICH': 140,
    'MASALA KULCHA': 130,
    'MASALA PAPAD': 40,
    'MASALA VADAPAV': 40,
    'MAXICAN PIZZA': 180,
    'MIX VEG KULCHA': 150,
    'ONION KULCHA': 140,
    "PANEER CHILLI KULCHA": 180,
    'PANEER GARLIC KULCHA': 180,
    'PANEER KULCHA': 180,
    'PANEER TANDURI BURGER': 90,
    'PIZZA SANDWICH': 150,
    'RAJMA': 60,
    'REGULAR TEA': 30,
    'ROSE LASSI': 100,
    'ROSTED PAPAD': 20,
    'SALTED LASSI': 70,
    'SPECIAL BURGER': 120,
    'SPECIAL PIZZA': 180,
    'SUGAR FREE TEA': 30,
    'SWEET LASSI': 80,
    'TANDOORI PANEER PIZZA': 200,
    'TANDOORI PANEER SANDWICH': 100,
    'VADAPAV': 30,
    'VEG CHEESE SANDWICH': 100,
    'VEG GRILLED SANDWICH': 80,
    'VEG RAITA': 70,
    'VEG BURGER': 60,
    'VEG CHEESE BURGER': 80
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      3, // Change this value to set the number of columns
                ),
                itemCount: itemImages
                    .length, // Change this value to set the number of items
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        // Play a sound as a one-shot, releasing its resources when it finishes playing.
                        Audio.load("$imagesPath/beep.mp3")
                          ..play()
                          ..dispose();
                        isTapped = true;
                        String item = itemName[index];
                        int prices;
                        prices = itemPrices[item] ?? 0;

                        if (itemPriceCount.containsKey(item)) {
                          int itemCount = itemPriceCount[item] ?? 0;
                          itemPriceCount[item] = itemCount + 1;
                          itemPriceCount.forEach((key, value) {
                            print("Printing again from start");
                            print("$key and count is $value");

                            print("it has been done");

                            print(itemPriceCount);
                          });
                        } else {
                          itemPriceCount[item] = 1;
                        }
                      });
                    },
                    child: MenuItem(
                      context: context,
                      imagePath: itemImages[index],
                      text: itemName[index],
                    ),
                  );
                },
              ),
            ),
            // isTapped
            //     ? Container(
            //         height: 50,
            //         color: Colors.red,
            //       )
            //     : SizedBox()

            isTapped ? billCountContainer() : SizedBox(),
          ],
        ));
  }

  Widget billCountContainer() => Container(
        height: MediaQuery.of(context).size.height * 0.12,
        color: Colors.teal.shade400,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Text(
                            "CHEESE CHILL ",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: white),
                          )),
                          Column(
                            children: [
                              Text(
                                "Rs 190.0",
                                style: TextStyle(color: white),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                decoration: BoxDecoration(
                                    border: Border.all(color: white, width: 1)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "1.0  ",
                                        style: TextStyle(
                                            fontSize: 18, color: white),
                                      ),
                                    ),
                                    Expanded(
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 5,
                          )
                        ],
                      ),
                      Container(
                        color: Colors.blueAccent,
                        height: MediaQuery.of(context).size.height * 0.057,
                        width: double.infinity,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            // "Total: Rs 190.00",
                            "Total: Rs ${totalPriceCount(itemPriceCount).toString()}.00",

                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.12,
                    color: Colors.red,
                    child: Icon(
                      Icons.print,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      );

  int totalPriceCount(Map<String, int> priceList) {
    int paisa = 0;
    priceList.forEach((key, value) {
      int rs = itemPrices[key] ?? 0;
      int singleItemPrice = value * rs;
      paisa += singleItemPrice;
    });
    return paisa;
  }
}
