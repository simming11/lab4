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
      body: SingleChildScrollView(
        child: Column(
          children: [
            radioMenulist("แมว","50"),
            radioMenulist("witr","50"),
            radioMenulist("แมว2","50"),
            radioMenulist("แมว5","50"),
            radioMenulist("แมว5","50"),
            const Divider(),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              secondary: const Text("25"),
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
      ),
    );
  }

  RadioListTile<String> radioMenulist(String title, String subtitle) {
    return RadioListTile(
      title: Text(title),
      value: title,
      subtitle: Text(subtitle),
      groupValue: foodradio,
      onChanged: (value) {
        setState(() {
          foodradio = value!;
        });

        // ignore: avoid_print
        print(foodradio);
      },
    );
  }
}
