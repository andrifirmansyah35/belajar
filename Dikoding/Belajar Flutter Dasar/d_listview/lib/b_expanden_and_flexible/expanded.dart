import 'package:flutter/material.dart';

class Rainbow extends StatelessWidget {
  const Rainbow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.red,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.orange,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.yellow,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.green,
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.blue,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.indigo,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.purple,
          ),
        ),
      ],
    );
  }
}

class RowsAndColumns extends StatelessWidget {
  const RowsAndColumns({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rows & Columns')),
      body: Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded( 
                child: Column(
                  children: [
                    Container(height: 120.0, color: Colors.greenAccent),
                    Container(height: 200.0, color: Colors.cyan),
                  ],
                ),
              ),
              Expanded(
                child: Container(color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
