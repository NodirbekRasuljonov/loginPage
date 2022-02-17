import 'package:flutter/material.dart';
import 'package:login_page/core/constants/const.dart';

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
                        image: AssetImage('assets/images/logo 1.jpg'),),),
              ),
            ),
            Positioned(
              top: 500.0,
              left: 16.0,
              bottom: 221.0,
              right: 16.0,
              child: InkWell(
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  width: 343.0,
                  child:Text('Войти',style: TextStyle(color: ColorConst.containertextColor,fontSize: FontConst.Medium),),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.red),
                ),
              ),
            ),
            Positioned(
              bottom: 120.0,
              left: 16.0,
              right: 14.0,
              child: Container(height: 50.0,width: 345.0,decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(RadiusConst.Small)),),),
             Positioned(
              bottom: 50.0,
              left: 16.0,
              right: 14.0,
              child: Container(height: 50.0,width: 345.0,
              decoration: BoxDecoration(border: Border.all(color: ColorConst.borderColor)),
              
              
              ),),
          ],
        ),
      ),
    );
  }
}
