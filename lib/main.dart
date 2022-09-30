import 'package:flutter/material.dart';

import 'feature/serviceExample/view/user_data_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //await LocaleManager.prefrencesInit();

  // await EasyLocalization.ensureInitialized();
  /*  runApp(MultiProvider(
    providers: [...ApplicationProvider.instance.dependItems],
    child: MyApp(),
  )); */
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserDataView(),
    );
  }
}
