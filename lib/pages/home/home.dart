import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_basic/controller/count.dart';
import 'package:getx_basic/pages/other/other.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  //usar o Get.put na criação do controller , tornando-o disponível nas rotas subsequentes
  final CountController controlller = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // usar o obx para poder atualizar sempre que o valor é alterado
      appBar: AppBar(
        title: Obx(() => Text("Total de cliques ${controlller.count}")),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => OtherPage(),
          ),
          child: const Text('Ir para outra página'),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: controlller.increment,
        child: const Icon(
          Icons.plus_one,
        ),
      ),
    );
  }
}
