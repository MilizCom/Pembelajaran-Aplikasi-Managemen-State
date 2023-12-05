import 'package:flutter/material.dart';
import 'package:flutter_state_management/getX/counterCountroler.dart';
import 'package:get/get.dart';

class ConnectGetX extends StatelessWidget {
  const ConnectGetX({super.key});
  @override
  Widget build(BuildContext context) {
    final counterCTR = Get.put(counterControlor());
    debugPrint("BuildUlang");
    return Scaffold(
      appBar: AppBar(
        title: const Text("State"),
        actions: const [],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "${counterCTR.number}",
                style:
                    const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  counterCTR.increment();
                  debugPrint(counterCTR.number.toString());
                },
                child: const Text("build"))
          ],
        ),
      ),
    );
  }
}
