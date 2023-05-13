import 'package:flutter/material.dart';
import 'package:data_internet/flutter_b_fundamental/c_state_management/b_lat_state_provider/provider/module_done_provider.dart';
import 'package:provider/provider.dart';

class DoneModuleList extends StatelessWidget {
  const DoneModuleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final doneModuleList =
        Provider.of<DoneModuleProvider>(context, listen: false).doneModuleList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Done Module List'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(doneModuleList[index]),
          );
        },
        itemCount: doneModuleList.length,
      ),
    );
  }
}
