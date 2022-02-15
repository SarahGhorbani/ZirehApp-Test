// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_application_1/new_food.dart';
import 'package:flutter_application_1/food_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:developer';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zireh',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        color: Color(0xFFFFFFFF),
      )),
      debugShowCheckedModeBanner: false,
      home: const FoodList(),
    );
  }
}

class FoodList extends StatefulWidget {
  const FoodList({Key? key}) : super(key: key);

  @override
  State<FoodList> createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  List<FoodModel> foodList = [
    FoodModel('بستنی', 'تایید  شده', 0xFF2AC1A3, 0xFFE8F8F5),
    FoodModel('نان تست', 'تایید نشده', 0xFFFED4C67, 0xFFFDEDF0),
    FoodModel('سیب زمینی سرخ کرده', 'درحال بررسی', 0xFFFFC312, 0xFFFFF9E7),
    FoodModel('گردو', 'تایید شده', 0xFF2AC1A3, 0xFFE8F8F5),
  ];

  FoodModel? foodModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF5F8FE),
        appBar: AppBar(
          centerTitle: true,
          title: SvgPicture.asset('assets/logotype.svg'),
        ),
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 16.0),
                      child: Text('لیست غذاهای ثبت شده',
                          style: TextStyle(
                              color: Color(0xFF454545),
                              fontFamily: 'IranSans')),
                    ),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  height: 48.0,
                  child: TextButton(
                      onPressed: () async {
                        FoodModel? foodModel = await Navigator.push(
                            context,
                            MaterialPageRoute<FoodModel>(
                                builder: (context) => const NewFood()));

                        if (foodModel != null) {
                          setState(() {
                            _addToFoodList(foodList, foodModel);
                          });
                        }

                        // }
                        // _navigateToNewFood(context,foodList);
                      },
                      child: const Text('افزودن غذای جدید',
                          style: TextStyle(
                              color: Color(0xFFC30E48),
                              fontFamily: 'IranSans')),
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: const BorderSide(
                                          color: Color(0xFFC30E48)))))),
                ),
                ListView.builder(
                    scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(top: 8),
                    itemCount: foodList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                          padding: const EdgeInsets.only(top: 4, bottom: 4),
                          child: Container(
                            height: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Container(
                                      height: 48,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color:
                                            Color(foodList[index].bgCodColor),
                                      ),
                                      child: Center(
                                          child: Padding(
                                              padding: const EdgeInsets.only(
                                                left: 8,
                                                right: 8,
                                              ),
                                              child: Text(
                                                  foodList[index].status,
                                                  style: TextStyle(
                                                      color: Color(
                                                          foodList[index]
                                                              .txtCodColor),
                                                      fontFamily:
                                                          'IranSans'))))),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Text(
                                    foodList[index].name,
                                    style: const TextStyle(
                                        color: Color(0xFF454545),
                                        fontFamily: 'IranSans'),
                                  ),
                                )
                              ],
                            ),
                          ));
                    }),
              ],
            ),
          ),
        ));
  }
}

// Future<FoodModel?> _navigateToNewFood(BuildContext context, List<FoodModel> foodList) async {
//   return await Navigator.push(context,
//       MaterialPageRoute<FoodModel>(builder: (context) => const NewFood()));

//   // if (foodModel != null) {
//   //   _addToFoodList(foodList, foodModel);
//   // }
// }

void _addToFoodList(List<FoodModel> foodList, FoodModel foodModel) {
  foodList.add(foodModel);
}
