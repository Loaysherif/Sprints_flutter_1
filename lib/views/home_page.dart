import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custom_text.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomText(
          text: "My First Project",
          color: Colors.black,
          fontSize: 32,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Local image
              Container(
                color: Colors.blue,
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.4,
                child: Image.asset("assets/flutter.png"),
              ),
              // Network image
              Container(
                color: Colors.red,
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.4,
                child: Image.network(
                  "https://brandlogos.net/wp-content/uploads/2021/12/flutter-brandlogo.net_.png",
                ),
              ),
            ],
          ),
          SizedBox(height: 30),

          // Custom text widget
          CustomText(
            text: "The two images are displayed",
            fontSize: 24,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontFamily: "Suwannaphum",
          ),
        ],
      ),
    );
  }
}
