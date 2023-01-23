import 'package:car_flutter/car_detiles.dart';
import 'package:car_flutter/color.dart';
import 'package:car_flutter/fonts.dart';
import 'package:car_flutter/images.dart';
import 'package:car_flutter/widgets/car_card.dart';
import 'package:car_flutter/widgets/custem_chip.dart';
import 'package:flutter/material.dart';

import '../model/car_model.dart';

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

double blurRadius = 3;
double spreadRadius = 2;
List<String> title = ['family cars', 'Cheap cars', 'Luxuly cars'];
int selectedIndex = 0;

List<CarModel> data = [
  CarModel(
      title: 'Tesla',
      price: 500,
      image: AppImages.tesla,
      transition: 'manul',
      speed: '500',
      ownersName: 'mr.Jon'),
  CarModel(
      title: 'RANGE ROVER',
      price: 700,
      image: AppImages.pure,
      transition: 'manul',
      speed: '500',
      ownersName: 'mr.Jon'),
  CarModel(
      title: 'LAMBORGHINI',
      price: 500,
      image: AppImages.lambo,
      transition: 'manul',
      speed: '500',
      ownersName: 'mr.Jon'),
  CarModel(
      title: 'RANGE ROVER',
      price: 500,
      image: AppImages.pure,
      transition: 'manul',
      speed: '500',
      ownersName: 'mr.Jon'),
  CarModel(
      title: 'LAMBORGHINI',
      price: 700,
      image: AppImages.lambo,
      transition: 'manul',
      speed: '500',
      ownersName: 'mr.Jon'),
  CarModel(
      title: 'Tesla',
      price: 500,
      image: AppImages.tesla,
      transition: 'manul',
      speed: '500',
      ownersName: 'mr.Jon'),
  CarModel(
      title: 'Tesla',
      price: 500,
      image: AppImages.tesla,
      transition: 'manul',
      speed: '500',
      ownersName: 'mr.Jon'),
  CarModel(
      title: 'RANGE ROVER',
      price: 700,
      image: AppImages.pure,
      transition: 'manul',
      speed: '500',
      ownersName: 'mr.Jon'),
  CarModel(
      title: 'LAMBORGHINI',
      price: 500,
      image: AppImages.lambo,
      transition: 'manul',
      speed: '500',
      ownersName: 'mr.Jon'),
  CarModel(
      title: 'RANGE ROVER',
      price: 500,
      image: AppImages.pure,
      transition: 'manul',
      speed: '500',
      ownersName: 'mr.Jon'),
  CarModel(
      title: 'LAMBORGHINI',
      price: 700,
      image: AppImages.lambo,
      transition: 'manul',
      speed: '500',
      ownersName: 'mr.Jon'),
  CarModel(
      title: 'Tesla',
      price: 500,
      image: AppImages.tesla,
      transition: 'manul',
      speed: '500',
      ownersName: 'mr.Jon'),
];

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Audi", style: AppFonts.w700h80),
            Image.asset(AppImages.audi),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: AppColor.colorWhite,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
              icon: Image.asset(
                AppImages.drower,
                width: 27,
                height: 17.5,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              });
        }),
        actions: [
          Image.asset(
            AppImages.vector2,
            color: Colors.black,
            width: 27,
            height: 17.5,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTapDown: (_) {
                blurRadius = 0;
                spreadRadius = 0;
                setState(() {});
              },
              onTapUp: (_) {
                blurRadius = 3;
                spreadRadius = 2;
                setState(() {});
              },
              child: AnimatedContainer(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: blurRadius,
                          spreadRadius: spreadRadius,
                          color: AppColor.colorText.withOpacity(0.6))
                    ]),
                child: Image.asset(AppImages.frame),
                duration: Duration(milliseconds: 100),
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                          content: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(Icons.close)),
                          title: const Center(
                            child: Text(
                              'ERROR',
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ));
              },
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomChip(
                  isSelected: selectedIndex == 0,
                  title: title[0],
                  onSelected: (isSelected) {
                    selectedIndex = 0;
                    setState(() {});
                  },
                ),
                CustomChip(
                  isSelected: selectedIndex == 1,
                  title: title[1],
                  onSelected: (isSelected) {
                    selectedIndex = 1;
                    setState(() {});
                  },
                ),
                CustomChip(
                  isSelected: selectedIndex == 2,
                  title: title[2],
                  onSelected: (isSelected) {
                    selectedIndex = 2;
                    setState(() {});
                  },
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                )
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            const Text(
              'Cars Available Near You',
              style: AppFonts.w400h20,
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: data.length,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: ((context, index) => CarCar(
                    onTup: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CarDetiles(
                                    data: data[index],
                                  )));

                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: ((context) => CarDetiles(
                      //               //image: data[index].image,
                      //             ))));
                    },
                    title: data[index].title,
                    prise: data[index].price,
                    image: data[index].image)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
