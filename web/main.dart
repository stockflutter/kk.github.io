import 'dart:html';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//homepage 메인

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MenuPage()),
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.paperplane, color: Colors.black),
            onPressed: () {},
          )
        ],
        title: Text('주식자산 n배 늘리기', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                height: 200,
                width: 200,
              ),
              Container(
                height: 400,
                width: 400,
                color: Colors.amber,
                child: CircleChart(),
              ),
              SizedBox(
                width: 100,
              ),
              Container(
                height: 400,
                width: 400,
                color: Colors.amber,
                child: CircleChart1(),
              )
            ],
          ),

          //자산차트
          Container(
            height: 120,
            width: double.infinity,
            color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Theme_1()),
                        );
                      },
                      icon: Center(
                          child: Icon(Icons.battery_charging_full,
                              color: Colors.black)),
                    ),
                    Text('2차전지')
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Theme_2()),
                        );
                      },
                      icon: Icon(Icons.lock, color: Colors.black),
                    ),
                    Text('양자암호')
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Theme_3()),
                        );
                      },
                      icon:
                          Icon(CupertinoIcons.paperplane, color: Colors.black),
                    ),
                    Text('2차전지')
                  ],
                )
              ],
            ),
          ), //테마
          Container(
            height: 120,
            width: double.infinity,
            color: Colors.black26,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Theme_4()),
                        );
                      },
                      icon:
                          Icon(CupertinoIcons.paperplane, color: Colors.black),
                    ),
                    Text('2차 전지')
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Theme_5()),
                        );
                      },
                      icon:
                          Icon(CupertinoIcons.paperplane, color: Colors.black),
                    ),
                    Text('a')
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Theme_6()),
                        );
                      },
                      icon:
                          Icon(CupertinoIcons.paperplane, color: Colors.black),
                    ),
                    Text('a')
                  ],
                )
              ],
            ),
          ), //테마
          Container(
              height: 120,
              width: double.infinity,
              color: Colors.black38,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Theme_plus()),
                        );
                      },
                      icon: Icon(Icons.add, color: Colors.black),
                    ),
                    Text('더보기')
                  ],
                ),
              )) //더보기
        ],
      ),
    );
  }
}

class Theme_1 extends StatelessWidget {
  const Theme_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme_1 ', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: Row(
        children: <Widget>[
          Container(
            width: 300,
            height: 300,
            child: TradingVolume(),
          )
        ],
      ),
    );
  }
}

class Theme_2 extends StatelessWidget {
  const Theme_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('Theme_2 ', style: TextStyle(color: Colors.black)),
      backgroundColor: Colors.white,
    ));
  }
}

class Theme_3 extends StatelessWidget {
  const Theme_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('Theme_3 ', style: TextStyle(color: Colors.black)),
      backgroundColor: Colors.white,
    ));
  }
}

class Theme_4 extends StatelessWidget {
  const Theme_4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('Theme_4 ', style: TextStyle(color: Colors.black)),
      backgroundColor: Colors.white,
    ));
  }
}

class Theme_5 extends StatelessWidget {
  const Theme_5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme_5 ', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),
    );
  }
}

class Theme_6 extends StatelessWidget {
  const Theme_6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('Theme_6 ', style: TextStyle(color: Colors.black)),
      backgroundColor: Colors.white,
    ));
  }
}

class Theme_plus extends StatelessWidget {
  const Theme_plus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('더보기 ', style: TextStyle(color: Colors.black)),
      backgroundColor: Colors.white,
    ));
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
          height: 100,
          width: double.infinity,
          color: Colors.amber,
          child: Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page1()),
                    );
                  },
                  child: Text("종목 추천"))),
        ),
        Container(
          height: 100,
          width: double.infinity,
          color: Colors.amber,
          child: Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page2()),
                    );
                  },
                  child: Text("종목 수정"))),
        ),
        Container(
          height: 100,
          width: double.infinity,
          color: Colors.amber,
          child: Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page3()),
                    );
                  },
                  child: Text("목표 수익률 수정"))),
        ),
        Container(
          height: 100,
          width: double.infinity,
          color: Colors.amber,
          child: Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page4()),
                    );
                  },
                  child: Text("금일 수익률 조회"))),
        ),
        Container(
          height: 100,
          width: double.infinity,
          color: Colors.amber,
          child: Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page5()),
                    );
                  },
                  child: Text("금일 수익조건 종목 및 횟수조회"))),
        ),
      ],
    ));
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('종목 추천', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            color: Colors.black26,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TradingVolume()),
                    );
                  }, //거래량
                  icon: Icon(CupertinoIcons.paperplane, color: Colors.black),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TradingAmount()),
                    );
                  }, //거래대금
                  icon: Icon(CupertinoIcons.paperplane, color: Colors.black),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TradingVi()),
                    );
                  }, //VI발동
                  icon: Icon(CupertinoIcons.paperplane, color: Colors.black),
                )
              ],
            ),

            //종목별 데이터 column
          ),
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('종목 수정', style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Container(
              height: 250,
              width: 1000,
              color: Colors.red,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page10()),
                  );
                },
                child: Text(
                  '종목명 :aa\n'
                  '종목코드 : bb\n'
                  '거래소 : cc',
                  style: TextStyle(
                    fontSize: 40,
                    height: 2,
                  ),
                ),
              ),
            ),
            Container(
                height: 250,
                width: 1000,
                color: Colors.amber,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page11()),
                      );
                    },
                    child: Text(
                        '종목명 :dd\n'
                        '종목코드 : ee\n'
                        '거래소 : ff',
                        style: TextStyle(
                          fontSize: 40,
                          height: 2,
                        )))),
            Container(
                height: 250,
                width: 1000,
                color: Colors.white,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page12()),
                      );
                    },
                    child: Text(
                        '종목명 :gg\n'
                        '종목코드 : hh\n'
                        '거래소 : ii',
                        style: TextStyle(
                          fontSize: 40,
                          height: 2,
                        ))))
          ],
        ));
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('목표 수익률 수정', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Text('aaa'),
          )
        ],
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('금일 수익률 조회', style: TextStyle(color: Colors.black)),
      backgroundColor: Colors.white,
    ));
  }
}

class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('금일 수익조건 종목 및 횟수조회', style: TextStyle(color: Colors.black)),
      backgroundColor: Colors.white,
    ));
  }
}

//종목 수정 페이지
class Page10 extends StatelessWidget {
  const Page10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('aa 종목수정', style: TextStyle(color: Colors.black)),
      backgroundColor: Colors.white,
    ));
  }
}

//종목 수정 페이지
class Page11 extends StatelessWidget {
  const Page11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('dd 종목수정', style: TextStyle(color: Colors.black)),
      backgroundColor: Colors.white,
    ));
  }
}

//종목 수정 페이지
class Page12 extends StatelessWidget {
  const Page12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('gg 종z목수정', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          Container(width: 200, height: 200, child: CircleChart())
        ],
      ),
    );
  }
}

class LikeWidget extends StatefulWidget {
  @override
  _LikeWidgetState createState() => _LikeWidgetState();
}

class _LikeWidgetState extends State<LikeWidget> {
  bool isLike = false; //0
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
          onTap: () {
            //1
            setState(() {
              //2
              isLike = !isLike;
            });
          },
          child: Text(
            "Like",
            style: TextStyle(color: isLike ? Colors.red : Colors.black), //3
          )),
    );
  }
}

class CircleChart extends StatelessWidget {
  const CircleChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('자산내역', style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: PieChart(
            PieChartData(sections: [
              PieChartSectionData(color: Colors.green, value: 99),
              PieChartSectionData(color: Colors.blue, value: 1),
            ]),
          ),
        ));
  }
}

class CircleChart1 extends StatelessWidget {
  const CircleChart1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('자산내역', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: Center(
          child: Text(
        '총자산내역 : '
        'aa 원\n'
        '전일자산내역 : '
        'bb 원\n'
        '금일수익내역 : '
        'cc 원',
        style: TextStyle(fontSize: 40),
      )),
    );
  }
}
/*
class MyMoney extends StatefulWidget {
  @override
  _MyMoney createState() => _MyMoney();
}

class _MyMoney extends State<MyMoney> {
  @override
  Widget build(BuildContext context) {
    return Center();
  }
}
*/

class TradingVolume extends StatelessWidget {
  const TradingVolume({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        SizedBox(
          height: 100,
        ),
        Row(
          children: [
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
          ],
        ),
        SizedBox(
          height: 100,
        ),
        Row(
          children: [
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
          ],
        ),
        SizedBox(
          height: 100,
        ),
        Row(
          children: [
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
          ],
        ),
        SizedBox(
          height: 100,
        ),
        Row(
          children: [
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
          ],
        ),
        SizedBox(
          height: 100,
        ),
        Row(
          children: [
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
          ],
        ),
        SizedBox(
          height: 100,
        ),
        Row(
          children: [
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
          ],
        )
      ],
    ));
  }
}

class TradingAmount extends StatelessWidget {
  const TradingAmount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        SizedBox(
          height: 100,
        ),
        Row(
          children: [
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
          ],
        ),
        SizedBox(
          height: 100,
        ),
        Row(
          children: [
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
          ],
        ),
        SizedBox(
          height: 100,
        ),
        Row(
          children: [
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
          ],
        ),
        SizedBox(
          height: 100,
        ),
        Row(
          children: [
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
          ],
        ),
        SizedBox(
          height: 100,
        ),
        Row(
          children: [
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
          ],
        ),
        SizedBox(
          height: 100,
        ),
        Row(
          children: [
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
          ],
        )
      ],
    ));
  }
}

class TradingVi extends StatelessWidget {
  const TradingVi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        SizedBox(
          height: 100,
        ),
        Row(
          children: [
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
          ],
        ),
        SizedBox(
          height: 100,
        ),
        Row(
          children: [
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
          ],
        ),
        SizedBox(
          height: 100,
        ),
        Row(
          children: [
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
          ],
        ),
        SizedBox(
          height: 100,
        ),
        Row(
          children: [
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
          ],
        ),
        SizedBox(
          height: 100,
        ),
        Row(
          children: [
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
          ],
        ),
        SizedBox(
          height: 100,
        ),
        Row(
          children: [
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
            SizedBox(
              width: 200,
            ),
            Text('aa'),
          ],
        )
      ],
    ));
  }
}
