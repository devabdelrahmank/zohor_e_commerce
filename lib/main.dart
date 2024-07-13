import 'package:firebase_core/firebase_core.dart';
import 'package:flower_e_commerce/provider/prov.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp();
  } catch (error) {
    if (kDebugMode) {
      print('ERROR IN FIREBASE==>>>$error');
    }
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Cartprov(),
      child: MaterialApp(
        title: 'zohor e commerce',
        debugShowCheckedModeBanner: false,
        // theme: ThemeData(useMaterial3: true),
        home: Home(),
      ),
    );
  }
}
