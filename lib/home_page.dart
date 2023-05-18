import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spotify_assesment/services/remote_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Category>? category;
  var isloaded = false;

  @override
  void initState() {
    super.initState();

    //Fetch data from API
    getData();
  }

  getData() async {
    category = await RemoteService().getCategory('');
    if(category != null)
    {
      setState(() {
        isloaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Category'),
        ),
        body: Visibility(
          visible: isloaded,
          replacement: const Center(child: CircularProgressIndicator(),
          ),
          child: ListView.builder(
            itemCount: category?.length,
            itemBuilder: (context, index) {
              var title;
              return Container(
                child: Text(''),
              );
            },
          ),
        ));
  }
}
