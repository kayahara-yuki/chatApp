import 'package:chat_app/pages/login_page.dart';
import 'package:chat_app/state/login_page_state.dart';
import 'package:chat_app/view_model/login_page_view_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StateNotifierProvider<LoginPageViewModel, LoginPageState>(
          create: (_) => LoginPageViewModel(),
        ),
      ],
      child: MaterialApp(
        home: LoginPage(),
      ),
    );
  }
}
