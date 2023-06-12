import 'dart:math';

import 'package:flutter/material.dart';
import 'package:number_on_trees/widgets/button/general_button.dart';
import 'package:number_on_trees/widgets/sizedBox/dynamic_veritical_space.dart';
import 'package:sizer/sizer.dart';

import '../../../core/constants/assets/image_constants.dart';
import '../../../widgets/button/custom_cupertino_button.dart';
import '../../../widgets/snackbar/custom_snackbar.dart';
import '../../../widgets/textFormField/custom_auth_text_form_field.dart';

class GameView extends StatefulWidget {
  const GameView({super.key});

  @override
  State<GameView> createState() => _GameViewState();
}

class _GameViewState extends State<GameView> {
  List<int> divisors = [];
  var rng = Random();
  PageController controller = PageController();

  int randomIndex = 0;
  int rndm1 = 0;
  int rndm2 = 0;
  int rndm3 = 0;
  int rndm4 = 0;
  int rndm5 = 0;
  int rndm6 = 0;
  void createRandomIndex() {
    setState(() {
      randomIndex = rng.nextInt(6);
    });
    print(divisors[randomIndex]);
  }

  List<int> findDivisors(int number) {
    divisors = [];
    for (int i = 2; i <= (number / 2); i++) {
      if (number % i == 0) {
        divisors.add(i);
      }
    }
    divisors.add(1);
    divisors.add(number);
    return divisors;
  }

  void createRandomNumber() {
    var find = findDivisors(rng.nextInt(100));
    while (find.length != 6) {
      find = findDivisors(rng.nextInt(100));
    }
  }

  final TextEditingController textController = TextEditingController();
  @override
  void initState() {
    createRandomNumber();
    createRandomIndex();
    rndm1 = rng.nextInt(100);
    rndm2 = rng.nextInt(100);
    rndm3 = rng.nextInt(100);
    rndm4 = rng.nextInt(100);
    rndm5 = rng.nextInt(100);
    rndm6 = rng.nextInt(100);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            ImageConstants.instance.back,
            height: 100.h,
            width: 100.w,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 8.h,
            left: 5.w,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/${rndm1 % 10}.png',
                  height: 20.h,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                    height: 20.h,
                    width: 40.w,
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          rndm1.toString(),
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                        )))
              ],
            ),
          ),
          Positioned(
            top: 20.h,
            right: 5.w,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/${rndm2 % 10}.png',
                  height: 15.h,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                    height: 15.h,
                    width: 30.w,
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          rndm2.toString(),
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                        )))
              ],
            ),
          ),
          Positioned(
            top: 35.h,
            left: 5.w,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/${rndm3 % 10}.png',
                  height: 10.h,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                    height: 10.h,
                    width: 20.w,
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          rndm3.toString(),
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                        )))
              ],
            ),
          ),
          Positioned(
            top: 5.h,
            right: 5.w,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/${rndm4 % 10}.png',
                  height: 10.h,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                    height: 10.h,
                    width: 20.w,
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          rndm4.toString(),
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                        )))
              ],
            ),
          ),
          Positioned(
            top: 40.h,
            right: 3.w,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/${rndm5 % 10}.png',
                  height: 20.h,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                    height: 20.h,
                    width: 40.w,
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          rndm5.toString(),
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                        )))
              ],
            ),
          ),
          Positioned(
            top: 45.h,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/${(rndm6 % 10)}.png',
                  height: 25.h,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                    height: 25.h,
                    width: 50.w,
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          rndm6.toString(),
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                        )))
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              child: Container(
                  width: 100.w,
                  height: 25.h,
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(13), topRight: Radius.circular(13))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          'Gezegenler üzerindeki sayıların toplamını bulup giriniz.',
                          style: TextStyle(fontSize: 18),
                        ),
                        DynamicVerticalSpace(height: 1.5.h),
                        CustomAuthTextFormField(
                            hintText: 'Toplam', iconData: Icons.plus_one, textInputType: TextInputType.number, controller: textController),
                        DynamicVerticalSpace(height: 1.5.h),
                        GeneralButton(
                          label: 'Devam',
                          onPressed: () {
                            if (textController.text.isEmpty) {
                              CustomSnackBar().snackBar(
                                  context: context,
                                  message: 'Lütfen sayıların toplamını giriniz',
                                  icon: Icons.error,
                                  backgroundColor: Colors.red,
                                  borderColor: Colors.red);
                            } else if ((rndm1 + rndm2 + rndm3 + rndm4 + rndm5 + rndm6).toString() == textController.text) {
                              CustomSnackBar().snackBar(
                                  context: context,
                                  message: 'Tebrikler',
                                  icon: Icons.check,
                                  backgroundColor: Colors.green,
                                  borderColor: Colors.green);
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const GameView()),
                              );
                            } else {
                              CustomSnackBar().snackBar(
                                  context: context,
                                  message: 'Tekrar Toplayınız',
                                  icon: Icons.error,
                                  backgroundColor: Colors.red,
                                  borderColor: Colors.red);
                            }
                          },
                        )
                      ],
                    ),
                  )))
        ],
      ),
    );
  }
}
