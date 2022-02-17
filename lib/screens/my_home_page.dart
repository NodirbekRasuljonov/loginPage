import 'package:flutter/material.dart';
import 'package:login_page/core/constants/const.dart';
import 'package:simple_icons/simple_icons.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              top: 268,
              left: 62,
              right: 63,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.067,
                width: MediaQuery.of(context).size.height * 025,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo 1.jpg'),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 500.0,
              left: 16.0,
              bottom: 221.0,
              right: 16.0,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, './loginPage');
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  width: 343.0,
                  child: Text(
                    'Войти',
                    style: TextStyle(
                        color: ColorConst.containertextColor,
                        fontSize: FontConst.Medium),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(RadiusConst.Small),
                      color: Colors.red),
                ),
              ),
            ),
            Positioned(
              bottom: 120.0,
              left: 16.0,
              right: 14.0,
              child: InkWell(
                onTap: () {},
                child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    width: 345.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorConst.borderColor,
                      ),
                      color: ColorConst.secondaryColor,
                      borderRadius: BorderRadius.circular(RadiusConst.Small),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.question_answer,
                            color: ColorConst.textColor,
                            size: FontConst.Medium,
                          ),
                        ),
                        Text(
                          'Связаться с Банком',
                          style: TextStyle(
                              color: ColorConst.textColor,
                              fontSize: FontConst.Medium),
                        )
                      ],
                    )),
              ),
            ),
            Positioned(
              bottom: 50.0,
              left: 16.0,
              right: 14.0,
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 50.0,
                  width: 345.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: const Icon(
                          SimpleIcons.globus,
                          size: 33.0,
                        ),
                      ),
                      Text(
                        'Язык интерфейса',
                        style: TextStyle(
                            color: ColorConst.textColor,
                            fontSize: FontConst.Medium),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(RadiusConst.Small),
                    border: Border.all(color: ColorConst.borderColor),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
