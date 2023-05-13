import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:data_internet/flutter_b_fundamental/c_state_management/b_lat_state_provider/provider/module_done_provider.dart';

class ModuleList extends StatelessWidget {
  const ModuleList({Key? key}) : super(key: key);

  final List<String> _moduleList = const [
    'Modul 1 - Pengenalan Dart',
    'Modul 2 - Program Dart Pertamamu',
    'Modul 3 - Dart Fundamental',
    'Modul 4 - Control Flow',
    'Modul 5 - Collections',
    'Modul 6 - Object Oriented Programming',
    'Modul 7 - Functional Styles',
    'Modul 8 - Dart Type System',
    'Modul 9 - Dart Futures',
    'Modul 10 - Effective Dart',
  ];

  // final List<String> _doneModuleList = []; //dihapus
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _moduleList.length,
      itemBuilder: (context, index) {
        return Consumer(builder: (context, DoneModuleProvider data, widget) {
          return ModuleTile(
            moduleName: _moduleList[index],
            isDone: data.doneModuleList.contains(_moduleList[index]),
            onClick: () {
              data.complete(_moduleList[index]);
            },
          );
        });
      },
    );
  }
}

class ModuleTile extends StatelessWidget {
  final String moduleName;
  final bool isDone;
  final Function() onClick;

  const ModuleTile({
    Key? key,
    required this.moduleName,
    required this.isDone,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(moduleName),
      trailing: isDone
          ? const Icon(Icons.done)
          : ElevatedButton(
              onPressed: onClick,
              child: const Text('Done'),
            ),
    );
  }
}
