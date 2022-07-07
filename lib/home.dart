import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Provider.dart';

class HomePageProvide extends StatelessWidget {
  const HomePageProvide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomePageInformation>(
            create: (context) => HomePageInformation())
      ],
      child: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

        body:Center(
          child: Text("home page"),
        )

    );
  }
}
