import 'package:custom_drawer/resource/drawable_manager.dart';
import 'package:custom_drawer/theme/app_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(DrawableManager.imgSplash),
            const SizedBox(height: 16),
            const Text(
              "The Fastest in",
              style: TextStyle(
                fontSize: 40,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            RichText(
              text: const TextSpan(
                text: "Delivery",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: ' Food ',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                      )),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Our job is to filling your tummy with",
              style: TextStyle(fontSize: 20, color: Colors.black38),
            ),
            const SizedBox(height: 8),
            const Text(
              "delicious food and fast delivery",
              style: TextStyle(fontSize: 20, color: Colors.black38),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Get Started"),
            )
          ],
        ),
      ),
    );
  }
}
