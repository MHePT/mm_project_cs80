import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 40),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/enab.jpg"),
                  radius: 70.0,
                ),
              ),
              const Text("ورق عنب", style: TextStyle(fontSize: 20)),
              const Text("ID 2022", style: TextStyle(fontSize: 20)),
              DataTable(
                  dataTextStyle:
                      const TextStyle(color: Colors.black, fontSize: 20),
                  headingTextStyle: const TextStyle(
                      color: Color.fromARGB(255, 5, 66, 116), fontSize: 30.0),
                  columnSpacing: 100,
                  columns: const [
                    DataColumn(
                        label: Text(
                      'Course',
                    )),
                    DataColumn(
                        label: Text(
                      'Grade',
                    ))
                  ],
                  rows: const [
                    DataRow(cells: [
                      DataCell(
                        Text('Pure Math'),
                      ),
                      DataCell(
                        Text('A'),
                      ),
                    ]),
                    DataRow(cells: [
                      DataCell(
                        Text('Physics'),
                      ),
                      DataCell(
                        Text('B+'),
                      ),
                    ]),
                    DataRow(cells: [
                      DataCell(
                        Text('Chemistry'),
                      ),
                      DataCell(
                        Text('C'),
                      ),
                    ]),
                    DataRow(cells: [
                      DataCell(
                        Text('HCI'),
                      ),
                      DataCell(
                        Text('A'),
                      ),
                    ]),
                  ]),
              OutlinedButton(
                onPressed: () {},
                child: const Text("See Full Profile"),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
