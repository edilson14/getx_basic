import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_basic/controller/count.dart';

class OtherPage extends StatelessWidget {
  OtherPage({super.key});
  final CountController controller = Get.find();

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Text("Valor do count na controller ${controller.count}"),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.plus_one),
          onPressed: () => controller.increment,
        ),
      );
}
