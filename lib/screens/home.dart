import 'package:flutter/material.dart';
import 'package:login_page/core/constants/const.dart';
import 'package:badges/badges.dart';

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
                          child: const Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          height: 31.0,
                          width: 30.99,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: ColorConst.kPrimaryColor,
                              borderRadius: BorderRadius.circular(25.0)),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 31.0,
                          width: 190.0,
                          child: Text(
                            'Добры вечер Nodirbek!',
                            style: TextStyle(
                                color: ColorConst.textColor,
                                fontSize: FontConst.Medium),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          height: 31.0,
                          width: 137.0,
                          child: Stack(
                            children: [
                              const Positioned(
                                child: Icon(
                                  Icons.notifications,
                                  color: Colors.black,
                                ),
                                right: 0.0,
                              ),
                              Positioned(
                                child: Container(
                                  alignment: Alignment.topRight,
                                  child: Badge(
                                    shape: BadgeShape.circle,
                                    elevation: 0.0,
                                    position: BadgePosition.topStart(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SliverToBoxAdapter(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Карты',
                        style: TextStyle(
                            color: ColorConst.textColor, fontSize: 34.0),
                      ),
                      InkWell(
                        onTap: (){},
                          child: CircleAvatar(
                        radius: 15.0,
                        backgroundColor: Colors.red,
                        child: CircleAvatar(
                          radius: 13.0,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.add,
                            size: FontConst.ExtraLarge,
                            color: ColorConst.kPrimaryColor,
                          ),
                        ),
                      ))
                    ],
                  )),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 200.0,
                      width: double.infinity,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.all(10.0),
                              height: 200.0,
                              width: 299.0,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(RadiusConst.Small),
                                  color: ColorConst.cardColor),
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 27.0,
                                    left: 19.0,
                                    right: 30.0,
                                    child: SizedBox(
                                      height: 28.0,
                                      width: 300.0,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            '* * * * * * * * * * * *',
                                            style: TextStyle(
                                                color: ColorConst
                                                    .containertextColor,
                                                fontSize: 22.0),
                                          ),
                                          Text(
                                            '3498',
                                            style: TextStyle(
                                                color: ColorConst
                                                    .containertextColor,
                                                fontSize: FontConst.ExtraLarge),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 19.0,
                                    top: 71.0,
                                    child: Text(
                                      'Expiry Date',
                                      style: TextStyle(
                                          color: ColorConst.containertextColor),
                                    ),
                                  ),
                                  Positioned(
                                    left: 19.0,
                                    top: 95,
                                    child: Text(
                                      '05/22',
                                      style: TextStyle(
                                          color: ColorConst.containertextColor),
                                    ),
                                  ),
                                  Positioned(
                                    right: 14.0,
                                    top: 80.0,
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      height: 33.0,
                                      width: 72.0,
                                      child: Text(
                                        'Available Balance',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            color:
                                                ColorConst.containertextColor),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 14.0,
                                    top: 117.0,
                                    child: Text(
                                      '40 KGS',
                                      style: TextStyle(
                                          color: ColorConst.containertextColor,
                                          fontSize: FontConst.ExtraLarge),
                                    ),
                                  ),
                                  Positioned(
                                      left: 19.06,
                                      top: 124.0,
                                      child:
                                          Image.asset('assets/images/visa.png'))
                                ],
                              ),
                            );
                          }),
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
