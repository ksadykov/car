import 'package:car_flutter/fonts.dart';
import 'package:car_flutter/images.dart';
import 'package:car_flutter/model/car_model.dart';
import 'package:car_flutter/widgets/info_windget.dart';
import 'package:flutter/material.dart';

class CarDetiles extends StatelessWidget {
  const CarDetiles({
    super.key,
    required this.data,
  });

  final CarModel data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Color(0xff95BCCC),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(45),
                    bottomRight: Radius.circular(45))),
            height: MediaQuery.of(context).size.height * 0.5,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 27,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Stack(
                    children: [
                      Container(
                        child: const Text(
                          'TIRA',
                          style: AppFonts.w400h160,
                        ),
                      ),
                      Image.asset(data.image),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 27,
          ),
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: Row(
              children: [
                Text(
                  data.title,
                  style: AppFonts.w400h20,
                ),
                Spacer(),
                Text(
                  '\$${data.price}.00',
                  style: const TextStyle(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            height: 95.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                InfoWidget(title: 'Transition', text: data.transition),
                InfoWidget(title: 'Transition', text: data.transition),
                InfoWidget(title: 'Transition', text: data.transition),
                InfoWidget(title: 'Transition', text: data.transition),
                InfoWidget(title: 'Transition', text: data.transition),
                InfoWidget(title: 'Transition', text: data.transition),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('RENDER'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 24,
                ),
                const SizedBox(
                  width: 11,
                ),
                Text(data.ownersName),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(AppImages.vector1),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(AppImages.phone),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
