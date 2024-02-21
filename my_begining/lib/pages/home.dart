import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: appBar(),
    );
  }
}

class appBar extends StatelessWidget {
  const appBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        'Breakfast',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      elevation: 0.0,
      leading: GestureDetector(
        onTap: (){

        },

        child: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset('assets/icons/back.svg'),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: (){

          },
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset('assets/icons/dotdot.svg'),
          ),
        ),
      ],
    );
  }
}
