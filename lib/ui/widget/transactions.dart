import 'package:flutter/material.dart';
import 'my_app_bar.dart';

class Transactions extends StatelessWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Container(
                    color: Colors.green,
                  ),
                  Container(
                    color: Colors.black,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
