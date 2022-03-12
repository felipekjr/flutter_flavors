import 'package:flutter/material.dart';
import 'package:flutter_flavors/environment.dart';

import 'pages/home-page.dart';

void init(EnvironmentSettings settings) async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    Environment(
      settings: settings,
      child: Stack(
        textDirection: TextDirection.ltr,
        children: [
          const MyApp(),
          if (settings.ambiente != Ambiente.producao)
          Align(
            alignment: Alignment.bottomLeft,
            child: Directionality(
              textDirection: TextDirection.ltr,
              child:   Banner(
                  message: AmbienteLabels[settings.ambiente]!,
                  location: BannerLocation.bottomStart,
                )
            ),
          )
        ],
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
