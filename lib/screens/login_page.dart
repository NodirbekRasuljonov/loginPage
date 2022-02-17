import 'package:flutter/material.dart';
import 'package:login_page/core/constants/const.dart';
import 'package:simple_icons/simple_icons.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  bool _issecure = true;
  bool _oneSwitched = false;
  bool _twoSwitched = false;
  bool _threeSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConst.secondaryColor,
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                left: 75.0,
                right: 75.0,
                top: 120.0,
                child: SizedBox(
                  height: 61.0,
                  width: 226.0,
                  child: Image.asset('assets/images/logo 1.jpg'),
                ),
              ),
              Positioned(
                left: 19.0,
                top: 225.0,
                child: SizedBox(
                  height: 18.0,
                  width: 115,
                  child: Text(
                    'ID ползователя',
                    style: TextStyle(
                        color: ColorConst.textColor,
                        fontSize: FontConst.Medium),
                  ),
                ),
              ),
              Positioned(
                left: 19.0,
                right: 19.0,
                top: 250.0,
                child: ListTile(
                  tileColor: Colors.grey.shade100,
                  leading: const Icon(Icons.person),
                  iconColor: ColorConst.kPrimaryColor,
                  title: Text(
                    '856000',
                    style: TextStyle(fontSize: FontConst.Medium),
                  ),
                ),
              ),
              Positioned(
                left: 19.0,
                top: 305.0,
                child: SizedBox(
                  height: 18.0,
                  width: 115,
                  child: Text(
                    'Пароль',
                    style: TextStyle(
                        color: ColorConst.textColor,
                        fontSize: FontConst.Medium),
                  ),
                ),
              ),
              Positioned(
                left: 19.0,
                right: 19.0,
                top: 325.0,
                child: Container(
                  color: Colors.grey.shade100,
                  child: TextFormField(
                    obscureText: _issecure,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      icon: Icon(
                        Icons.lock,
                        color: ColorConst.kPrimaryColor,
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            if (_issecure) {
                              _issecure = !_issecure;
                            } else {
                              _issecure = !_issecure;
                            }
                            setState(() {});
                          },
                          icon: Icon(Icons.remove_red_eye)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ColorConst.borderColor.withOpacity(0.5))),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorConst.borderColor.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 14.0,
                top: 390.0,
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    'Забыли пароль',
                    style: TextStyle(
                        color: ColorConst.kPrimaryColor,
                        fontSize: FontConst.Medium),
                  ),
                ),
              ),
              Positioned(
                  bottom: 100.0,
                  left: 20.0,
                  right: 20.0,
                  child: Container(
                    height: 200.0,
                    width: 375.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Switch(
                          inactiveTrackColor: Colors.grey.shade200,
                          activeColor: ColorConst.kPrimaryColor,
                          activeTrackColor: ColorConst.kPrimaryColor,
                          thumbColor: MaterialStateProperty.all(Colors.white),
                            value: _oneSwitched,
                            onChanged: (value) {
                              setState(() {
                                _oneSwitched = value;
                              });
                            }),
                            Text('Вход по логину',style: TextStyle(color: ColorConst.textColor,fontSize: FontConst.Medium),)
                            ],
                        ),
                        Row(
                          children: [
                            Switch(
                          inactiveTrackColor: Colors.grey.shade200,
                          activeColor: ColorConst.kPrimaryColor,
                          activeTrackColor: ColorConst.kPrimaryColor,
                          thumbColor: MaterialStateProperty.all(Colors.white),
                            value: _twoSwitched,
                            onChanged: (value) {
                              setState(() {
                                _twoSwitched = value;
                              });
                            }),
                            Text('Вход по коду',style: TextStyle(color: ColorConst.textColor,fontSize: FontConst.Medium),)
                            ],
                        ),
                        Row(
                          children: [
                            Switch(

                          inactiveTrackColor: Colors.grey.shade200,
                          activeColor: ColorConst.kPrimaryColor,
                          activeTrackColor:ColorConst.kPrimaryColor ,
                          thumbColor: MaterialStateProperty.all(Colors.white),
                            value: _threeSwitched,
                            onChanged: (value) {
                              setState(() {
                                _threeSwitched = value;
                              });
                            }),
                            Text('Вход по Face ID',style: TextStyle(color: ColorConst.textColor,fontSize: FontConst.Medium),)
                            ],
                        ),
                      ],
                    ),
                  )),
              Positioned(
                bottom: 30.0,
                left: 16.0,
                right: 16.0,
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  width: 343,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(RadiusConst.Small),
                  ),
                  child: Text(
                    'Войти',
                    style: TextStyle(
                        color: ColorConst.containertextColor,
                        fontSize: FontConst.Medium),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
