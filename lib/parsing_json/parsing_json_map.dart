import 'package:flutter/material.dart';
import 'package:http/http.dart';

class JsonParsingMap extends StatefulWidget {
  @override
  _JsonParsingMapState createState() => _JsonParsingMapState();
}

class _JsonParsingMapState extends State<JsonParsingMap> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Network {
  final String url;
  Network(this.url);
  Future fetchData() async {
    print("$url");
    Response response = await get(Uri.encodeFull(url));
    if (response.statusCode == 200) {
      // print("good");
      print(response.body);
      return response.body;
    } else {
      return response.statusCode;
    }
  }
}
