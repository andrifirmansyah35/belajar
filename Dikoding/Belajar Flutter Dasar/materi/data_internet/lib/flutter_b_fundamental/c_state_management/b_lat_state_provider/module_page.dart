import 'package:flutter/material.dart';
import 'package:data_internet/flutter_b_fundamental/c_state_management/b_lat_state_provider/module_list.dart';
import 'package:data_internet/flutter_b_fundamental/c_state_management/b_lat_state_provider/module_list_done.dart';
import 'package:data_internet/flutter_b_fundamental/c_state_management/b_lat_state_provider/provider/module_done_provider.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneModuleProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const ModulePage(),
      ),
    );
  }
}

class ModulePage extends StatelessWidget {
  const ModulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lat State Provider'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.done),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DoneModuleList(),
                ),
              );
            },
          )
        ],
      ),
      body: const ModuleList(),
    );
  }
}
