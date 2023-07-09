import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListViewPage(),
    );
  }
}

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  var titleList = [
    'Dentist',
    'Pharmacist',
    'School teather',
    'IT manager',
    'Account',
    'Lawyer',
    'Hair dresser',
    'Physician',
    'Web developer',
    'Medical Secretary'
  ];
  var imageList = [
    'image/1.png',
    'image/2.png',
    'image/3.png',
    'image/4.png',
    'image/5.png',
    'image/6.png',
    'image/7.png',
    'image/8.png',
    'image/9.png',
    'image/10.png',
  ];
  var description = [
    'There are different types of careers you can pursue in your life. which one will it be? ',
    'There are different types of careers you can pursue in your life. which one will it be? ',
    'There are different types of careers you can pursue in your life. which one will it be? ',
    'There are different types of careers you can pursue in your life. which one will it be? ',
    'There are different types of careers you can pursue in your life. which one will it be? ',
    'There are different types of careers you can pursue in your life. which one will it be? ',
    'There are different types of careers you can pursue in your life. which one will it be? ',
    'There are different types of careers you can pursue in your life. which one will it be? ',
    'There are different types of careers you can pursue in your life. which one will it be? ',
    'There are different types of careers you can pursue in your life. which one will it be? ',
  ];

  void showPopup(cont, title, image, description) {
    showDialog(
      context: cont,
      builder: (context) {
        return Dialog(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: 380,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    image,
                    width: 200,
                    height: 200,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    description,
                    maxLines: 3,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close),
                  label: const Text('close'),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget build(BuildContext ctx) {
    double width = MediaQuery.of(ctx).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ListView',
          style: TextStyle(
            color: Colors.grey,
            backgroundColor: Colors.red,
          ),
        ),
        backgroundColor: Colors.red,
        elevation: 24,
      ),
      body: ListView.builder(
          itemCount: titleList.length,
          itemBuilder: (context1, index) {
            return GestureDetector(
              onTap: () {
                showPopup(context1, titleList[index], imageList[index],
                    description[index]);
              },
              child: Card(
                child: Row(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset(imageList[index]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text(
                            titleList[index],
                            style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: width,
                            child: Text(
                              description[index],
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey[500]),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
