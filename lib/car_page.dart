import 'package:car_flutter/detiles_page.dart';
import 'package:car_flutter/design/color.dart';
import 'package:car_flutter/design/fonts.dart';
import 'package:car_flutter/design/images.dart';
import 'package:car_flutter/ather/car_card.dart';
import 'package:car_flutter/ather/custem_chip.dart';
import 'package:car_flutter/providers/car_provider.dart';
import 'package:car_flutter/widgets/wastebasket.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model/list_car_model.dart';

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

double blurRadius = 3;
double spreadRadius = 2;
List<String> title = ['family cars', 'Cheap cars', 'Luxuly cars'];
int selectedIndex = 0;

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    final vm = context.watch<CarProvider>();
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Audi", style: AppFonts.w700h80),
            Image.asset(vm.cars[2].image),
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
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Wastebasket(),
                ),
              );
            },
            icon: Image.asset(
              AppImages.vector2,
              color: Colors.black,
              width: 27,
              height: 17.5,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
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
                      color: AppColor.colorText.withOpacity(0.6),
                    ),
                  ],
                ),
                child: Image.asset(AppImages.frame),
                duration: const Duration(milliseconds: 100),
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
                  ),
                );
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
                ),
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
                itemBuilder: ((context, index) => CarCard(
                      model: vm.cars[index],
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CarDetiles(
                              data: vm.cars[index],
                            ),
                          ),
                        );
                      },
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
