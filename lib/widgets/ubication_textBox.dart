import 'package:flutter/material.dart';

class UbicationBoxText extends StatelessWidget {
  const UbicationBoxText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: const Column(
        children: [
          RowTextBox(
            textBar: "¿Dónde estás?",
            fillColor: 0xff8781f0,
            coreColor: 0xffbbc6f2,
            subrallado: true,
          ),
          RowTextBox(
            textBar: "¿A dónde te diriges?",
            fillColor: 0xfffa6305,
            coreColor: 0xffdeb27c,
          ),
        ],
      ),
    );
  }
}

class RowTextBox extends StatelessWidget {
  final int fillColor;
  final int coreColor;
  final String textBar;
  final bool subrallado;
  const RowTextBox({
    super.key,
    required this.fillColor,
    required this.coreColor,
    required this.textBar,
    this.subrallado = false,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Row(
          children: [
            DecorationPoint(
              fillColor: fillColor,
              coreColor: coreColor,
            ),
            Expanded(
              child: textFieldLocation(
                textBar: textBar,
                fillColor: fillColor,
                subrallado: subrallado,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class textFieldLocation extends StatelessWidget {
  const textFieldLocation({
    super.key,
    required this.textBar,
    required this.fillColor,
    this.subrallado = false,
  });
  final String textBar;
  final int fillColor;
  final bool subrallado;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //utiliza subrallado para determinar si es el primer txtField
        Text(
          "${subrallado ? donde().desde : donde().hasta}",
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Color(0xffb5b5b5),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: TextField(
            decoration: InputDecoration(
              hintStyle: TextStyle(
                fontSize: 15,
                color: Color(0xffb5b5b5),
              ),
              hintText: textBar,
              border: subrallado ? null : InputBorder.none,
            ),
            cursorColor: Color(fillColor),
          ),
        ),
      ],
    );
  }
}

class DecorationPoint extends StatelessWidget {
  final int fillColor;
  final int coreColor;

  const DecorationPoint({
    super.key,
    required this.fillColor,
    required this.coreColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 70,
          color: Colors.white,
          child: Container(
            margin: EdgeInsets.only(right: 10),
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(fillColor),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25).copyWith(top: 5),
          child: SizedBox(
            width: 10,
            height: 10,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(blurRadius: 2, color: Colors.white),
                ],
                shape: BoxShape.circle,
                color: Color(coreColor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class donde {
  String get hasta => "Hasta";
  String get desde => "Desde";
}
