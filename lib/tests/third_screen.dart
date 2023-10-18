import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FirstPostApi extends StatefulWidget {
  const FirstPostApi({super.key});

  @override
  State<FirstPostApi> createState() => _FirstPostApiState();
}

class _FirstPostApiState extends State<FirstPostApi> {

  var baseUrl = "https://reqres.in/api/users";


  @override
  void initState() {
    super.initState();
  WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
    await getPostApi();
     setState(() {

     });
  });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice"),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Container(
          height: 50,
          width: 200,
          color: Colors.red,
          child: Text('Welcome'),
        ),
      ),
    );
  }

  Future<void> getPostApi() async {

    Map<String, dynamic> bodyMap = {};
    bodyMap["name"] = "morpheus";
    bodyMap["job"] = "leader";

    var response = await http.post(Uri.parse(baseUrl), body: bodyMap);
    if(response.body.isEmpty) {
      debugPrint('damn');

    } else {
      debugPrint('response123 = ${response.body}');

    }
  }
}
