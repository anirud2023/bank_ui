import 'package:bank_ui/View/sign_in_page.dart';
import 'package:bank_ui/res/routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyBV30_rwrS8sNdSCaQzebgiRb0IbsGyxjw",
        appId: "1:959267162165:android:8559896a03cdd5334e897c",
        messagingSenderId: "Messaging sender id here",
        projectId: "project id here",
  )
  );

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const  LoginInPage(),
      getPages: Routes.appRoutes(),
    );
  }
}

