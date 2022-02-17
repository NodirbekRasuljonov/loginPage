import 'package:flutter/material.dart';
import 'package:login_page/core/constants/const.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 9,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 17.0),
              height: 91,
              width: 375,
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Row(
                      children: [
                       Container(
                         child:const Icon(
                           Icons.person,
                           color: Colors.white,
                         ),
                         height: 31.0,
                         width: 30.99,
                         alignment: Alignment.center,
                         decoration: BoxDecoration(
                           color: ColorConst.kPrimaryColor,
                           borderRadius: BorderRadius.circular(25.0)
                         ),
                       ),
                        Container(
                          alignment: Alignment.center,
                          height: 31.0,
                          width: 190.0,
                          child: Text('Добры вечер Nodirbek!',style: TextStyle(color: ColorConst.textColor,fontSize: FontConst.Medium),),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          height: 31.0,
                          width: 137.0,
                          child:const Icon(Icons.notifications,color: Colors.black,),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                height: 91,
                width: double.infinity,
                color: Colors.red,
              ))
        ],
      ),
    ));
  }
}
