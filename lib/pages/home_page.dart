// ignore_for_file: sort_child_properties_last

import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fullter_tutorial/models/catalog.dart';
import 'package:fullter_tutorial/widgets/drawer.dart';

import '../widgets/item_Widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Tahsin";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson); //!takes dynamic data from json
    var productsData = decodedData["products"]; //!make map from dynamic data
    CatalogModel.items =
        List.from(productsData) //!convert map to an list of Item Class
            .map<Item>((item) => Item.fromMap(item))
            .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Catalog"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items.isNotEmpty)
            ? GridView.builder(
                // ignore: prefer_const_constructors
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  final item = CatalogModel.items[index];
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: GridTile(
                      header: Container(
                        child: Text(
                          item.name,
                          style: TextStyle(color: Colors.white),
                        ),
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(color: Colors.deepPurple),
                      ),
                      child: Image.network(
                        item.image,
                      ),
                      footer: Container(
                        child: Text(
                          item.price.toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(color: Colors.black),
                      ),
                    ),
                  );
                })
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
