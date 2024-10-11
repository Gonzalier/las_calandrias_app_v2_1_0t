import 'package:flutter/material.dart';

import 'package:las_calandrias_app_v2_1_0t/widgets/ubication_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFF8082f2),
        ),
        body: Column(
          children: [UbicationBox()],
        ));
  }
}
