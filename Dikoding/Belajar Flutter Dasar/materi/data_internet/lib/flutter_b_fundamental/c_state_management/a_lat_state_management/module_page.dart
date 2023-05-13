import 'package:flutter/material.dart';
import 'package:data_internet/flutter_b_fundamental/c_state_management/a_lat_state_management/module_list.dart';
import 'package:data_internet/flutter_b_fundamental/c_state_management/a_lat_state_management/module_list_done.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const ModulePage(),
    );
  }
}

class ModulePage extends StatefulWidget {
  const ModulePage({super.key});

  @override
  State<ModulePage> createState() => _ModulePageState();
}

class _ModulePageState extends State<ModulePage> {
  final List<String> doneModuleList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Memulai Pemrograman Dart'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.done),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DoneModuleList(
                            doneModuleList: doneModuleList,
                          )));
            },
          )
        ],
      ),
      body: ModuleList(doneModuleList: doneModuleList),
    );
  }
}
