import 'package:flutter/material.dart';

class kategoriPage extends StatefulWidget {
  const kategoriPage({super.key});

  @override
  State<kategoriPage> createState() => _kategoriPageState();
}

class _kategoriPageState extends State<kategoriPage> {
  int choise = 0;
  List<String> category = ["Elektronik", "Fashion", "Kesehatan"];
  Map<String, List<String>> data = {
    "Elektronik": [
      "laptop",
      "desktop",
      "kipas",
      "handphone",
    ],
    "Fashion": ["Gamis", "Mukenah", "kemeja"],
    "Kesehatan": ["paracetamol", "arkad", "josef"]
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
          actions: [],
        ),
        body: ListView(children: [
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(10),
            child: ListView.separated(
              itemBuilder: (context, index) {
                // ignore: unused_local_variable
                var pick = index == choise;
                return SizedBox(
                  height: 40,
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          choise = index;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: index == choise ? Colors.orange : null,
                      ),
                      child: Text(
                        category[index],
                        style:
                            const TextStyle(fontSize: 16, color: Colors.white),
                      )),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
              itemCount: category.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Center(
                      child: Text(
                        data[category[choise]]![index],
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                itemCount: data[category[choise]]!.length),
          )
        ]));
  }
}
