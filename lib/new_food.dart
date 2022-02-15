import 'package:flutter/material.dart';
import 'package:flutter_application_1/food_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewFood extends StatefulWidget {
  const NewFood({Key? key}) : super(key: key);

  @override
  State<NewFood> createState() => _NewFoodeState();
}

class _NewFoodeState extends State<NewFood> {
  String category = '';
  String name = '';
  String recipe = '';
  String meal = '';
  String province = '';
  bool isLocal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF5F8FE),
        appBar: AppBar(
          centerTitle: true,
          title: SvgPicture.asset('assets/logotype.svg'),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                _backToHome(context);
              },
              icon: const Icon(
                Icons.arrow_forward,
                color: Color(0xFFC30E48),
              ),
            )
          ],
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        top: 16,
                        right: 16,
                      ),
                      child: Text(
                        'ثبت غذای جدید',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF454545),
                            fontFamily: 'IranSans'),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                          borderRadius: BorderRadius.circular(32),
                          child: Image.asset('assets/images/food.png',
                              width: 96.0, height: 96.0, fit: BoxFit.cover)),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 16,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const <Widget>[
                            Text(
                              'تصویر غذا',
                              style: TextStyle(
                                  color: Color(0xFFB2B2B7),
                                  fontFamily: 'IranSans'),
                            ),
                            Text(
                              'تغییر تصویر',
                              style: TextStyle(
                                  color: Color(0xFFC30E48),
                                  fontFamily: 'IranSans'),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: 56.0,
                    child: TextField(
                      textAlign: TextAlign.start,
                      style: const TextStyle(color: Color(0xFF454545)),
                      decoration: InputDecoration(
                          alignLabelWithHint: true,
                          labelText: 'دسته بندی',
                          fillColor: Colors.white,
                          filled: true,
                          hintStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold), //hint text style
                          labelStyle: const TextStyle(
                              fontSize: 14,
                              color: Color(0xFFB2B2B7),
                              fontFamily: 'IranSans'),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1.0,
                              color: Color(0xFFD2D8E5),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1.0, color: Color(0xFFD2D8E5)),
                            borderRadius: BorderRadius.circular(10),
                          )),
                      onChanged: (text) {
                        category = text;
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: 56.0,
                    child: TextField(
                      textAlign: TextAlign.start,
                      style: const TextStyle(color: Color(0xFF454545)),
                      decoration: InputDecoration(
                          labelText: 'عنوان',
                          fillColor: Colors.white,
                          filled: true,
                          hintStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold), //hint text style
                          labelStyle: const TextStyle(
                              fontSize: 14,
                              color: Color(0xFFB2B2B7),
                              fontFamily: 'IranSans'),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1.0, color: Color(0xFFD2D8E5)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1.0, color: Color(0xFFD2D8E5)),
                            borderRadius: BorderRadius.circular(10),
                          )),
                      onChanged: (text) {
                        name = text;
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: 56.0,
                    child: TextField(
                      textAlign: TextAlign.start,
                      style: const TextStyle(color: Color(0xFF454545)),
                      decoration: InputDecoration(
                          labelText: 'توضیحات با دستور پخت',
                          // alignLabelWithHint: true,
                          fillColor: Colors.white,
                          filled: true,
                          hintStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold), //hint text style
                          labelStyle: const TextStyle(
                              fontSize: 14,
                              color: Color(0xFFB2B2B7),
                              fontFamily: 'IranSans'),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1.0, color: Color(0xFFD2D8E5)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1.0, color: Color(0xFFD2D8E5)),
                            borderRadius: BorderRadius.circular(10),
                          )),
                      onChanged: (text) {
                        recipe = text;
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: 56.0,
                    child: TextField(
                      textAlign: TextAlign.start,
                      style: const TextStyle(color: Color(0xFF454545)),
                      decoration: InputDecoration(
                          labelText: 'مناسب برای وعده',
                          // alignLabelWithHint: true,
                          fillColor: Colors.white,
                          filled: true,
                          hintStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold), //hint text style
                          labelStyle: const TextStyle(
                              fontSize: 14,
                              color: Color(0xFFB2B2B7),
                              fontFamily: 'IranSans'),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1.0, color: Color(0xFFD2D8E5)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1.0, color: Color(0xFFD2D8E5)),
                            borderRadius: BorderRadius.circular(10),
                          )),
                      onChanged: (text) {
                        meal = text;
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 24,
                    right: 24,
                  ),
                  child: Row(
                    children: <Widget>[
                      const Text(
                        "این غذا محلی است؟",
                        style: TextStyle(
                            color: Color(0xFF454545), fontFamily: 'IranSans'),
                      ),
                      const Spacer(),
                      const Text(
                        "خیر",
                        style: TextStyle(
                            color: Color(0xFF454545), fontFamily: 'IranSans'),
                      ),
                      Switch(
                        activeColor: const Color(0xFFC30E48),
                        value: isLocal,
                        onChanged: (value) {
                          setState(() {
                            isLocal = value;
                          });
                        },
                      ),
                      const Text(
                        "بله",
                        style: TextStyle(
                            color: Color(0xFFC30E48), fontFamily: 'IranSans'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: 56.0,
                    child: TextField(
                      textAlign: TextAlign.start,
                      style: const TextStyle(color: Color(0xFF454545)),
                      decoration: InputDecoration(
                          hintText: 'اردبیل',
                          labelText: 'استان',
                          fillColor: Colors.white,
                          filled: true,
                          hintStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold), //hint text style
                          labelStyle: const TextStyle(
                              fontSize: 14,
                              color: Color(0xFFB2B2B7),
                              fontFamily: 'IranSans'),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1.0, color: Color(0xFFD2D8E5)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1.0, color: Color(0xFFD2D8E5)),
                            borderRadius: BorderRadius.circular(10),
                          )),
                      onChanged: (text) {
                        province = text;
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    top: 12.0,
                    bottom: 24.0,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: 48.0,
                    child: TextButton(
                        child: const Text(
                          'تایید و ادامه',
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'IranSans'),
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFFC30E48),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ))),
                        onPressed: () {
                          FoodModel foodModel = FoodModel.all(
                              name, category, recipe, meal, isLocal, province);

                          Navigator.pop(context, foodModel);
                        }),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

void _backToHome(BuildContext context) {
  Navigator.pop(context);
}
