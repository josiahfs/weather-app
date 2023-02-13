import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/controller/global_controller.dart';
import 'package:weather_app/widget/hourly.dart';
import 'package:weather_app/widget/neumorph.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalController globalController =
      Get.put(GlobalController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      body: SafeArea(
        child: Obx(
          () => (globalController.checkLoading().isTrue
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              // : Container(
              //     child: Text('Hello'),
              //   )

              : Container(
                  child: ListView(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 20),
                    children: [
                      Container(
                        decoration: neumorph1,
                        child: const TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            prefixIconColor: Color(0xffA9A9A9),
                            hintText: 'Search City',
                            hintStyle: TextStyle(color: Color(0xffA9A9A9)),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 24),
                        decoration: neumorph1,
                        width: MediaQuery.of(context).size.width,
                        height: 183,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kediri',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  '30\u00B0',
                                  style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Partly Cloudy',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      'Tue, 18 Jan',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xffA9A9A9)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/partly-cloudy-day.png',
                                  width: 105,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/windy.png',
                                      width: 23,
                                    ),
                                    const Text(
                                      '4 km/h',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xffA9A9A9),
                                          fontWeight: FontWeight.w400),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset(
                                      'assets/images/drops.png',
                                      width: 23,
                                    ),
                                    const Text(
                                      '4 km/h',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xffA9A9A9),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Center(
                        child: Text('Today',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500)),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 110,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Hourly(
                              img: 'assets/images/partly-cloudy-day.png',
                              wind: 4,
                              temp: 30,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        'Next 7 days',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                )),
        ),
      ),
    );
  }
}
