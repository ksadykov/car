import 'package:flutter/material.dart';

class CarCar extends StatelessWidget {
  const CarCar({
    Key? key,
    required this.title,
    required this.prise,
    required this.image,
    required this.onTup,
  }) : super(key: key);

  final String title;
  final int prise;
  final String image;
  final Function() onTup;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTup,
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
              Image.asset(image),
              Text(title, style: TextStyle(color: Color(0xff2B4C59))),
              Text(
                '\$$prise/day',
              ),
              Row(
                children: const [
                  Spacer(),
                  Icon(
                    Icons.heart_broken,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.arrow_circle_right_sharp,
                    color: Colors.blue,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
