import 'package:flutter/material.dart';

enum Gender { M, W, U }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool ch = false;
  Gender _gender = Gender.U;
  final _valueList = ['두 번째', '세 번째'];
  var _selectedValue = '세 번째';
  DateTime _selectedDate = DateTime(2023, 7, 7, 10, 30);
  TimeOfDay? _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '힌트',
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: '힌트',
                  ),
                ),
                Checkbox(
                    value: ch,
                    onChanged: (value) {
                      setState(() {
                        ch = value!;
                      });
                    }),
                SizedBox(
                  height: 40,
                ),
                Switch(
                    value: ch,
                    onChanged: (value) {
                      setState(() {
                        ch = value!;
                      });
                    }),
                ListTile(
                  title: Text('Man'),
                  leading: Radio(
                    value: Gender.M,
                    groupValue: _gender,
                    onChanged: (value) {
                      setState(() {
                        _gender = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Women'),
                  leading: Radio(
                    value: Gender.W,
                    groupValue: _gender,
                    onChanged: (value) {
                      setState(() {
                        _gender = value!;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                RadioListTile(
                    title: Text('남자'),
                    value: Gender.M,
                    groupValue: _gender,
                    onChanged: (value) {
                      setState(() {
                        _gender = value!;
                      });
                    }),
                RadioListTile(
                    title: Text('여자'),
                    value: Gender.W,
                    groupValue: _gender,
                    onChanged: (value) {
                      setState(() {
                        _gender = value!;
                      });
                    }),
                DropdownButton(
                  value: _selectedValue,
                  //map()함수는 반복되는 값을 다른 형태로 변환하는 방법을 제공하는 함수(파이썬 map()과 같음)
                  items: _valueList.map(
                    (value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value + '앙'),
                      );
                    },
                  ).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedValue = value!;
                    });
                  },
                ),
                ElevatedButton(
                  child: Icon(Icons.access_time),
                  onPressed: () {
                    showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('이게 제목이구나'),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[
                                  Text('Alert Dialog입니다'),
                                  Text('ok를 눌러 닫아라'),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                  child: Text('ok'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  }),
                              TextButton(
                                  child: Text('close'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  })
                            ],
                          );
                        });
                  },
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        child: Ink(
                          decoration: ShapeDecoration(
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.abc_sharp),
                            onPressed: () {
                              showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2018),
                                lastDate: DateTime(2030),
                                builder: (BuildContext context, Widget? child) {
                                  return Theme(
                                    data: ThemeData.light().copyWith(
                                      scaffoldBackgroundColor: Colors.black,
                                    ),
                                    child: child!,
                                  );
                                },
                              ).then((selectedDate) {
                                if (selectedDate != null) {
                                  setState(() {
                                    _selectedDate = selectedDate;
                                  });
                                }
                              });
                            },
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        child: Text(
                          '날짜: $_selectedDate',
                          style: TextStyle(fontSize: 30), // 텍스트 크기 조정
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      ElevatedButton(
                        child: Text(
                          '버튼이여라',
                          style: TextStyle(fontSize: 30),
                        ),
                        onPressed: () async {
                          final TimeOfDay? timeofday = await showTimePicker(
                              context: context, initialTime: TimeOfDay.now());

                          if (timeofday != null) {
                            setState(() {
                              _selectedTime = timeofday;
                            });
                          }
                        },
                      ),
                      Text('$_selectedTime'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
