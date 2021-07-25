import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      // fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage('assets/wide-ufrpe.jpg'),
              )),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
                0.0,
                0.6,
              ],
              colors: [
                Colors.transparent,
                Colors.white,
              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height / 2,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            verticalDirection: VerticalDirection.up,
            children: [
              TextButtonTheme(
                data: TextButtonTheme.of(context),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(
                      MediaQuery.of(context).size.width - 100,
                      50,
                    ),
                  ),
                  child: Text('PRÓXIMO'),
                  onPressed: () {},
                ),
              ),
              Text(
                'Seja bem vinde ao RUral',
                style: TextStyle(color: Color(0xff1c1c1c)),
              ),
              Text(
                'Olá',
                style: TextStyle(
                  fontSize: 34,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
