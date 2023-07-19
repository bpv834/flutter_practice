import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // 구글폰트사용
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timer_builder/timer_builder.dart'; // 타이머빌더 듀레이선값 단위로 현재 시간을 보여줌
import 'package:intl/intl.dart'; // DateFormat 사용 패키지

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({Key? key, this.parseWeatherData}) : super(key: key);
  final dynamic parseWeatherData;

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  String cityName = "";
  double temp = 0.0;
  var date = DateTime.now(); //현재 요일 출력

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updataData(widget.parseWeatherData);
  }

  void updataData(dynamic weatherdata) {
    temp = weatherdata['main']['temp'];
    cityName = weatherdata['name'];

    print(temp.toString() + "°C");
    print(cityName);
  }

  String getSystemTime() {
    var now = DateTime.now();
    return DateFormat("h:mm a").format(now);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // title: Text(''),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.near_me),
          onPressed: () {},
          iconSize: 30,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.location_searching,
            ),
            iconSize: 30,
          )
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              'image/background.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 150,
                            ),
                            Text(
                              'Seoul',
                              style: GoogleFonts.lato(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              children: [
                                //현재 시간 출력
                                TimerBuilder.periodic(Duration(minutes: 1),
                                    builder: (context) {
                                  print('${getSystemTime()}');
                                  //빌더 위젯은 반드시 위젯을 리턴해야 하기때문에 텍스트 위젯을 리턴해줌
                                  return Text(
                                    '${getSystemTime()}',
                                    style: GoogleFonts.lato(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  );
                                }),
                                //
                                Text(
                                  //서버에서 시간을 받아서 원하는 string으로 포맷팅해주기
                                  DateFormat('EEEE,  ').format(date),
                                  style: GoogleFonts.lato(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  DateFormat('d MMM, yyy').format(date),
                                  style: GoogleFonts.lato(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '18\u2103',
                              style: GoogleFonts.lato(
                                fontSize: 85,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              children: [
                                SvgPicture.asset('svg/Sun.svg'),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'clear sky',
                                  style: GoogleFonts.lato(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Divider(
                        height: 15,
                        thickness: 2,
                        color: Colors.white30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'AQI(대기질지수)',
                                style: GoogleFonts.lato(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Image.asset(
                                'image/bad.png',
                                width: 37,
                                height: 35,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '매우나쁨',
                                style: GoogleFonts.lato(
                                  fontSize: 14,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '미세먼지',
                                style: GoogleFonts.lato(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '174.75',
                                style: GoogleFonts.lato(
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'ug/m^3',
                                style: GoogleFonts.lato(
                                  fontSize: 14,
                                  color: Colors.white30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '초미세먼지',
                                style: GoogleFonts.lato(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '84.03',
                                style: GoogleFonts.lato(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'ug/m^3',
                                style: GoogleFonts.lato(
                                  fontSize: 14,
                                  color: Colors.white30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
