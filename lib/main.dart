// Import necessary packages and files
import 'package:app0/main/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'main/binding.dart';

// The main function that runs the app
void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Ensures Flutter binding is initialized
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions
        .currentPlatform, // Initialize Firebase with provided options
  );
  runApp(const App0()); // Run the app by calling the App0 widget
}

// The root widget of the Flutter app
class App0 extends StatelessWidget {
  const App0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false, // Disable the debug banner
      initialBinding: AppBindings(), // Attach a binding class
      home:
          const Home(), // Set the initial screen of the app to the Home widget
    );
  }
}
