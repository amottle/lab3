import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Лабораторная работа №3',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color likeColor = Colors.grey;
  int _likeCount = 24;
  void _print () {
    setState(() {

    });
  }
  void _pressedLike () {
    setState(() {
      if (likeColor == Colors.grey) {
        likeColor = Colors.red;
        _likeCount++;
      }
      else {
        likeColor = Colors.grey;
        _likeCount--;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Общежития КубГАУ'),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                //картинка
                children: <Widget>[
                  SizedBox(
                    child: Image.asset(
                      'images/obshaga.jpg',
                      fit: BoxFit.fill,
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    mainAxisAlignment:
                    MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(25, 30, 10, 0),
                        child: Text(
                          'Общежитие №20',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(25, 5, 10, 0),
                        child: Text(
                          'г. Краснодар, ул. Калинина, 13',
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(40, 25, 0, 0),
                            child:
                            IconButton(onPressed: _pressedLike, icon: Icon(Icons.favorite, color: likeColor, ),
                            ),

                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                              child: Text(
                                '$_likeCount',
                                style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              )),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 25, 0, 25),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 35, 0),
                      child: Column(
                        children:  <Widget>[
                          IconButton(onPressed: _print, icon: const Icon(Icons.phone, color: Colors.green),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Text(
                              'ПОЗВОНИТЬ',
                              style:
                              TextStyle(color: Colors.green, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 35, 0),
                      child: Column(
                        children:  <Widget>[
                          IconButton(onPressed: _print, icon: const Icon(Icons.near_me, color: Colors.green),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Text(
                              'МАРШРУТ',
                              style:
                              TextStyle(color: Colors.green, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Column(
                        children:  <Widget>[
                          IconButton(onPressed: _print, icon: const Icon(Icons.share, color: Colors.green),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Text(
                              'ПОДЕЛИТЬСЯ',
                              style:
                              TextStyle(color: Colors.green, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 10, 25, 0),
                child: Row(
                  children: const <Widget>[
                    Flexible(
                      child: Text(
                            'Студенческий городок или так называемый'
                            'кампус Кубанского ГАУ состоит из двадцати '
                            'общежитий, в которых проживает более 8000 '
                            'студентов, что составляет 96% от всех '
                            'нуждающихся. Студенты первого курса '
                            'обеспечены местами в общежитии полностью. '
                            'В соответствии с Положением о '
                            'студенческих общежитиях университета, '
                            'при поселении между администрацией и '
                            'студентами заключается договор найма '
                            'жилого помещения. Воспитательная работа в '
                            'общежитиях направлена на улучшение быта, '
                            'соблюдение правил внутреннего распорядка, '
                            'отсутствия асоциальных явлений в '
                            'молодежной среде. Условия проживания в '
                            'общежитиях университетского кампуса '
                            'полностью отвечают санитарным нормам и '
                            'требованиям: наличие оборудованных кухонь, '
                            'душевых комнат, прачечных, читальных залов, '
                            'комнат самоподготовки, помещений для '
                            'заседаний студенческих советов и наглядной '
                            'агитации. С целью улучшения условий быта '
                            'студентов активно работает система '
                            'студенческого самоуправления - студенческие '
                            'советы организуют всю работу по '
                            'самообслуживанию.',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                        textDirection: TextDirection.ltr,
                        softWrap: true,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}