import 'package:flutter/material.dart';
import 'package:signup/constants.dart';
import 'package:signup/navbar.dart';

class Grideviewscreen extends StatelessWidget {
  Grideviewscreen({Key? key}) : super(key: key);

  final List<Map> schoolTeachers =
      List.generate(10, (index) => {"id": index, "name": "Teacher $index"})
          .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Gridview'),
        backgroundColor: kPrimaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        // implement GridView.builder
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: schoolTeachers.length,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: kPrimaryLightColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(schoolTeachers[index]["name"]),
              );
            }),
      ),
    );
  }
}
