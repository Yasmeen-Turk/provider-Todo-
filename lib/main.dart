import 'package:flutter/material.dart';
import 'package:flutter_provider_todo/TabBarPage.dart';
import 'package:flutter_provider_todo/database_provider.dart';
import 'package:flutter_provider_todo/db_helper.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DBHelper.myDatabase.initDb();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderDatabase(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: TabBarPage(),
      ),
    );
  }
}
