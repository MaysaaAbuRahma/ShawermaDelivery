import 'package:firebase_core/firebase_core.dart';
import 'package:shawerma_delivery/app.dart';
import 'package:shawerma_delivery/simple_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repository/user_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCXfzCmrIg4TQjmiPcYdo4xCZ78qnv2BIU",
      appId: '1:106568215870:android:c2692354500a4e421ed06f',
      messagingSenderId: '106568215870',
      projectId: "shawermadelivery-8223a",
    ),
  );

  Bloc.observer = SimpleBlocObserver();

  runApp(
    MyApp(
      FirebaseUserRepo(),
      title: 'shawerma',
    ),
  );
}
