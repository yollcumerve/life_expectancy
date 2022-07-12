import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_expectancy/constant.dart';
import './IconCinsiyet.dart';
import './mycontainerwidget.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String? seciliCinsiyet;
  double icilenSigara = 0.0;
  double yapilanSpor = 0.0;
  int boy = 170;
  int kilo = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Yaşam Beklentisi',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyContainer(
                        child: buildRowOutlineButton(
                      'BOY',
                      170,
                    )),
                  ),
                  Expanded(
                    child: MyContainer(
                      child: buildRowOutlineButton(
                        'KİLO',
                        60,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Haftada Kaç Gün Spor Yapıyorsunuz ?',
                    style: kYaziStili,
                  ),
                  Text(
                    yapilanSpor.round().toString(),
                    style: kYaziStili,
                  ),
                  Slider(
                      min: 0,
                      max: 7,
                      value: yapilanSpor,
                      onChanged: (double newValue) {
                        setState(() {
                          yapilanSpor = newValue;
                        });
                      })
                ],
              ),
            )),
            Expanded(
                child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Günde Kaç Sigara İçiyorsunuz?',
                    style: kYaziStili,
                  ),
                  Text(
                    icilenSigara.round().toString(),
                    style: kYaziStili,
                  ),
                  Slider(
                      min: 0,
                      max: 30,
                      value: icilenSigara,
                      onChanged: (double newValue) {
                        setState(() {
                          icilenSigara = newValue;
                        });
                      })
                ],
              ),
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyContainer(
                      onPress: () {
                        setState(() {
                          seciliCinsiyet = 'KADIN';
                          print('Kadın butonu seçildi');
                        });
                      },
                      renk: seciliCinsiyet == 'KADIN'
                          ? Colors.lightBlue[100]
                          : Colors.white,
                      child: IconCinsiyet(
                        icon: FontAwesomeIcons.venus,
                        cinsiyet: 'KADIN',
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyContainer(
                      onPress: () {
                        setState(() {
                          seciliCinsiyet = 'ERKEK';
                          print('erkek butonuna basıldı');
                        });
                      },
                      renk: seciliCinsiyet == 'ERKEK'
                          ? Colors.lightBlue[100]
                          : Colors.white,
                      child: IconCinsiyet(
                        icon: FontAwesomeIcons.mars,
                        cinsiyet: 'ERKEK',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ButtonTheme(
              height: 50,
              child: FlatButton(
               color: Colors.white, 
              onPressed: () {
                 print('Hesapla butonuna basıldı');
                //Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage()));
               
              } , 
              child: Text('HESAPLA',
              style: kYaziStili,
              ),
              ),
            )


          ],

        )
        
        );
  }

  Row buildRowOutlineButton(
    String label,
    int number,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RotatedBox(
          quarterTurns: -1,
          child: Text(
            label,
            style: kYaziStili,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        RotatedBox(
          quarterTurns: -1,
          child: Text(
            'BOY' == label ? boy.toString() : kilo.toString(),
            style: kYaziStili,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonTheme(
              minWidth: 36,
              child: OutlinedButton(
                child: Icon(
                  FontAwesomeIcons.plus,
                  size: 10,
                ),
                onPressed: () {
                  setState(() {
                    label == 'BOY' ? boy++ : kilo++;
                  });
                },
              ),
            ),
            ButtonTheme(
              minWidth: 36,
              child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    label == 'BOY' ? boy++ : kilo++;
                  });
                },
                child: Icon(
                  FontAwesomeIcons.minus,
                  size: 10,
                ),
              ),
            )
          ],
        ),
      ],
    );
    
  }
}
