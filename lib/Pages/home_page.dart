import 'package:flutter/material.dart';
import 'package:flutter_application/models/catolog.dart';
import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(5, (index) => CatalogModel.items[0]);
    var catalogModel = CatalogModel;
    return Scaffold(
      appBar: AppBar(
        title: Text("Catelog app"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummylist.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummylist[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
