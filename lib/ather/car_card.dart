import 'package:car_flutter/model/class_car_model.dart';
import 'package:car_flutter/providers/car_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CarCard extends StatelessWidget {
  const CarCard({
    required this.model,
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final CarModel model;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    final vm = context.read<CarProvider>();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                spreadRadius: 4,
                blurRadius: 4,
                color: Colors.black.withOpacity(0.20),
              ),
            ],
            borderRadius: BorderRadius.circular(5)),
        height: 172,
        width: 152,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(model.image),
            Text(model.title, style: TextStyle(color: Color(0xff2B4C59))),
            Text(
              '\$${model.price}/day',
            ),
            Row(
              children: [
                const Spacer(),
                InkWell(
                  onTap: () {
                    vm.removetoWastebasket(model: model);
                  },
                  child: const Icon(Icons.remove),
                ),
                InkWell(
                  onTap: () {
                    vm.addtoWastebasket(model: model);
                  },
                  child: const Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
                const Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                InkWell(
                  onTap: onTap,
                  child: const Icon(
                    Icons.arrow_circle_right_sharp,
                    color: Colors.blue,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
