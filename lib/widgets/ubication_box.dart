import 'package:flutter/material.dart';

import 'package:las_calandrias_app_v2_1_0t/widgets/ubication_textBox.dart';

class UbicationBox extends StatelessWidget {
  const UbicationBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 170,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xFF8082f2),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
          ).copyWith(bottomRight: Radius.circular(20)),
        ),
        child: UbicationBoxText(),
      ),
    );
  }
}
