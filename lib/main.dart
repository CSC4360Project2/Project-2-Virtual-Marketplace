import 'package:project2/firebase_options.dart';
import 'package:project2/providers/art.dart';
import 'package:project2/services/redirecting_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ArtMethods()),
    ],
    child: const DigitalArtApp(),
  ));
}

class DigitalArtApp extends StatelessWidget {
  const DigitalArtApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const RedirectingService(),
    );
  }
}
