import 'package:car_flutter/ather/car_card.dart';
import 'package:car_flutter/providers/car_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wastebasket extends StatelessWidget {
  const Wastebasket({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<CarProvider>();
    return Scaffold(
      body: GridView.builder(
        shrinkWrap: true,
        itemCount: vm.wastebasket.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) =>
            CarCard(model: vm.wastebasket[index], onTap: () {}),
      ),
    );
  }
}
