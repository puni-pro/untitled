import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/years.dart';

import 'Provider.dart';

class CloudPageProvide extends StatelessWidget {
  const CloudPageProvide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CloudPageInformation>(
            create: (context) => CloudPageInformation())
      ],
      child: const CloudPage(),
    );
  }
}

class CloudPage extends StatelessWidget {
  const CloudPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
              height: 100,
              width: 200,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => YearsPage(0,"過去問"),
                  ));
                },
                child: const Card(
                    color: Colors.blueAccent,
                    child: Center(
                      child: Text(
                        "過去問",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    )),
              )),
          SizedBox(
              height: 100,
              width: 200,
              child: InkWell(
                onTap: () {

                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => YearsPage(1,"講義資料"),
                      ));


                },
                child: const Card(
                    color: Colors.blueAccent,
                    child: Center(
                      child: Text(
                        '講義資料',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    )),
              ))
        ],
      ),
    ));
  }
}
