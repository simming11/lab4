import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  String foodradio = "";
  bool staregg = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("input widget"),
      ),
      body: Column(
        children: [
          RadioListTile(
            title: const Text("noodle 50 บาท"),
            value: "noodle",
            groupValue: foodradio,
            onChanged: (value) {
              setState(() {
                foodradio = value!;
              });

              // ignore: avoid_print
              print(foodradio);
            },
          ),
          RadioListTile(
            title: const Text("mama 30 บาท"),
            value: "mama",
            groupValue: foodradio,
            onChanged: (value) {
              setState(() {
                foodradio = value!;
              });

              // ignore: avoid_print
              print(foodradio);
            },
          ),
          RadioListTile(
            title: const Text("ผัดไก่ 30 บาท"),
            value: "ผัดไก่",
            groupValue: foodradio,
            onChanged: (value) {
              setState(() {
                foodradio = value!;
              });

              // ignore: avoid_print
              print(foodradio);
            },
          ),
          RadioListTile(
            title: const Text("ผัดกระเพา 30 บาท"),
            value: "ผัดกระเพา",
            groupValue: foodradio,
            onChanged: (value) {
              setState(() {
                foodradio = value!;
              });

              // ignore: avoid_print
              print(foodradio);
            },
          ),
          RadioListTile(
            tileColor: Colors.deepPurple,
            activeColor: Colors.amber,
            title: const Text("ผัดแมว 30 บาท"),
            value: "ผัดแมว",
            groupValue: foodradio,
            onChanged: (value) {
              setState(() {
                foodradio = value!;
              });

              // ignore: avoid_print
              print(foodradio);
            },
          ),
          const Divider(),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: const Text("ไข่ดาว"),
            value: staregg,
            onChanged: (value) {
              setState(() {
                staregg = value!;
              });
            },
          )
        ],
      ),
    );
  }
}
