import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: const Text(" BOTTOMSHEET",
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
            child: MaterialButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: Colors.deepPurpleAccent)),
          onPressed: () {
            showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                ),
                isDismissible: false, // offline-swipable
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 400,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.deepPurple[200],
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25))),
                      child: Center(
                          child: TextButton(
                        onPressed: (() {
                          Navigator.pop(context);
                        }),
                        child: const Text(
                          "CART DETAILS",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                    ),
                  );
                });
          },
          child: const Text(
            "TAP TO CHECKOUT !!",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        )),
      ),
    );
  }
}
