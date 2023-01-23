import 'package:car_flutter/widgets/pagethree.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Sign In",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 70,
                    fontWeight: FontWeight.w200),
              ),
              const Text('EMAIL OR PHONE'),
              const TextField(
                decoration: InputDecoration(hintText: 'Loremipsum@gmail.com'),
              ),
              const SizedBox(height: 28),
              const Text("PASSWORD"),
              const TextField(
                decoration: InputDecoration(hintText: '*********'),
              ),
              const Text('Forgot password?'),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PageThree()));
                },
                child: const Text('Log In'),
              ),
            ],
          ),
        ),
      );
    });
  }
}
