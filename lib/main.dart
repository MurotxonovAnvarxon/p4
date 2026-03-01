import 'package:flutter/material.dart';

ValueNotifier<bool> isAuthP4 = ValueNotifier<bool>(false);

class MyAppP4 extends StatefulWidget {
  final Function(bool) isAuthGlobalP4;

  const MyAppP4({super.key, required this.isAuthGlobalP4});

  @override
  State<MyAppP4> createState() => _MyAppP4State();
}

class _MyAppP4State extends State<MyAppP4> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isAuthP4,

      builder: (BuildContext context, bool value, Widget? child) {
        widget.isAuthGlobalP4(value);

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            leading: GestureDetector(
              onTap: () {
                isAuthP4.value = false;
              },
              child: Icon(Icons.arrow_back_rounded),
            ),
            title: Text("P4"),
          ),
          body: Container(color: Colors.green),
        );
      },
    );
  }
}
