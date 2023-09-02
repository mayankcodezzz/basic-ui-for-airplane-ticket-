import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter test app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TestAppPage(),
    );
  }
}

enum Trip { roundTrip, oneWay, multiCity }

class TestAppPage extends StatefulWidget {
  const TestAppPage({Key? key}) : super(key: key);

  @override
  State<TestAppPage> createState() => _TestAppPageState();
}

class _TestAppPageState extends State<TestAppPage> {
  Trip _tripradio = Trip.oneWay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Color(0xffffc9a9)],
              stops: [0.0, 0.9],
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 20, top: 40, bottom: 40),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Transform.scale(
                              scale: 0.8,
                              child: Container(
                                width: 86,
                                height: 86,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage('assets/image1.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Hello 👋',
                                    textScaleFactor: 0.8,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    'Rakib Kawshar',
                                    style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Transform.scale(
                              scale: 2.0,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color(0Xfff5f5f5),
                                  border: Border.all(color: Colors.white, width: 2),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: Transform.scale(
                                  scale: 0.7,
                                  child: const Icon(
                                    Icons.notifications_none_rounded,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Let's Book",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 34,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Your Next Flight",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 34,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Radio(
                                  fillColor: MaterialStateColor.resolveWith(
                                      (states) => const Color(0XFF000000)),
                                  value: Trip.roundTrip,
                                  groupValue: _tripradio,
                                  onChanged: (value) {
                                    setState(() {
                                      _tripradio = value!;
                                    });
                                  },
                                ),
                                const Text(
                                  "Round trip",
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                  fillColor: MaterialStateColor.resolveWith(
                                      (states) => const Color(0XFF000000)),
                                  value: Trip.oneWay,
                                  groupValue: _tripradio,
                                  onChanged: (value) {
                                    setState(() {
                                      _tripradio = value!;
                                    });
                                  },
                                ),
                                const Text(
                                  "One Way",
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                  fillColor: MaterialStateColor.resolveWith(
                                      (states) => const Color(0XFF000000)),
                                  value: Trip.multiCity,
                                  groupValue: _tripradio,
                                  onChanged: (value) {
                                    setState(() {
                                      _tripradio = value!;
                                    });
                                  },
                                ),
                                const Text(
                                  "Multi City",
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0Xfff5f5f5),
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: Transform.scale(
                                  scale: 0.71,
                                  child: const Icon(Icons.airplanemode_on,
                                      color: Colors.grey),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: "From",
                                    labelStyle: TextStyle(
                                        color: Colors.grey, fontSize: 25),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey,
                                          width: 2), 
                                    ),
                                  ),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 25), 
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                              children: [
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0Xfff5f5f5),
                                border: Border.all(color: Colors.white, width: 2),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: Transform.scale(
                                scale: 0.71,
                                child: const Icon(Icons.airplanemode_on_rounded,
                                    color: Colors.grey),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: "To",
                                  labelStyle:
                                      TextStyle(color: Colors.grey, fontSize: 25),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 2), 
                                  ),
                                ),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25), 
                              ),
                            ),
                          ]),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children:[
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0Xfff5f5f5),
                                  border: Border.all(color: Colors.white, width: 2),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: Transform.scale(
                                  scale: 0.71,
                                  child: const Icon(Icons.date_range_outlined, color: Colors.grey),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Expanded(
                                child: TextField(
                                decoration: InputDecoration(
                                  labelText: "Date",
                                  labelStyle:
                                      TextStyle(color: Colors.grey, fontSize: 25),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 2), 
                                  ),
                                ),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25), 
                            ),
                              ),
                          ]),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children:[
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0Xfff5f5f5),
                                  border: Border.all(color: Colors.white, width: 2),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: Transform.scale(
                                  scale: 0.71,
                                  child: const Icon(Icons.airline_seat_recline_extra, color: Colors.grey),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Expanded(
                                child: TextField(
                                decoration: InputDecoration(
                                  labelText: "Class",
                                  labelStyle:
                                      TextStyle(color: Colors.grey, fontSize: 25),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 2),  
                                  ),
                                ),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25), 
                            ),
                              ),
                          ]),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children:[
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0Xfffdefe5),
                                  border: Border.all(color: const Color(0Xfffdefe5), width: 2),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: Transform.scale(
                                  scale: 0.71,
                                  child: const Icon(Icons.person, color: Colors.grey),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Expanded(
                                child: TextField(
                                decoration: InputDecoration(
                                  labelText: "Passenger",
                                  labelStyle:
                                      TextStyle(color: Colors.grey, fontSize: 25),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 2),  
                                  ),
                                ),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25),  
                            ),
                              ),
                         ]),
                        ],
                      ),
                    )
                  ]),
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(Icons.search_outlined),
      ),
    );
  }
}
