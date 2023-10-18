import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:test_sample/modal_class/apiCalling.dart';
import 'package:test_sample/modal_class/secondApi.dart';

class TestOneScreen extends StatefulWidget {
  const TestOneScreen({super.key});

  @override
  State<TestOneScreen> createState() => _TestOneScreenState();
}

class _TestOneScreenState extends State<TestOneScreen> {
  // String baseUrl = 'https://dummyjson.com/users/1';
  String baseUrl = 'https://dummyjson.com/products/1';
  ApiCalling apiCalling = ApiCalling();
  SecondApi secondApi = SecondApi();
  bool checkApiBaseUrl = false;


  @override
  void initState() {
    super.initState();
  WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
    if(baseUrl.contains('/users/')) {
      await getUserApi(checkBaseUrl: false);
      checkApiBaseUrl = !checkApiBaseUrl;
    }
 /*   // if(checkApiBaseUrl) {
    //   await getUserApi(checkBaseUrl: true);
    // } else {
    //   await getUserApi(checkBaseUrl: false);
    // }*/
    await getUserApi(checkBaseUrl: checkApiBaseUrl);
    setState(() {

    });
  });


  }


  @override
  Widget build(BuildContext context) {
    // debugPrint('test0 = ${response.body?? ""}');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Api Calling'),
        backgroundColor: Colors.lightGreen,

      ),
      body: checkApiBaseUrl ? Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(apiCalling.firstName ?? ""),
              Text(apiCalling.lastName.toString()),
              Text(apiCalling.maidenName.toString()),
              Text(apiCalling.age.toString() ?? ""),
              Text(apiCalling.gender.toString() ?? ""),
              Text(apiCalling.email.toString() ?? ""),
              Text(apiCalling.phone.toString() ?? ""),
              Text(apiCalling.username.toString() ?? ""),
              Text(apiCalling.password.toString() ?? ""),
              Text(apiCalling.birthDate.toString() ?? ""),
              Image.network(apiCalling.image.toString()),
              Text(apiCalling.bloodGroup.toString()),
              Text(apiCalling.height.toString()),
              Text(apiCalling.weight.toString()),
              Text(apiCalling.eyeColor.toString()),
              Text(apiCalling.hair?.color.toString() ?? ""),
              Text(apiCalling.hair?.type.toString() ?? ""),
              Text(apiCalling.domain.toString()),
              Text(apiCalling.domain.toString()),
              Text(apiCalling.ip.toString()),


              Text(apiCalling.username.toString()),

              Text(apiCalling.address?.address ?? ""),
              Text(apiCalling.birthDate.toString()),


            ],
          ),
        ),
      ) : Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Text(secondApi.title ?? ""),
              Text(secondApi.description ?? ""),
              Text(secondApi.price.toString() ?? ""),
              Text(secondApi.discountPercentage.toString() ?? ""),
              Text(secondApi.rating.toString() ?? ""),
              Text(secondApi.stock.toString() ?? ""),
              Text(secondApi.brand.toString() ?? ""),
              Text(secondApi.category.toString() ?? ""),
              Image.network(secondApi.thumbnail.toString()),
              ListView.builder(
                itemCount: secondApi.images?.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
             /*     for(int i = 0, i < index, i++)
                  Image.network(secondApi.images![index]);*/

              },)


            ],
          ),
        ),
      )
    );
  }

  Future<Object> getUserApi({required bool checkBaseUrl}) async {
    Uri uri = Uri.parse(baseUrl);
    var response = await http.get(uri);

    if(checkApiBaseUrl) {
      apiCalling = ApiCalling.fromJson(json.decode(response.body));
      if(response.body.isEmpty) {
        print('test');
      }
      debugPrint('test1 = ${response.body}');
    } else {
      secondApi = SecondApi.fromJson(jsonDecode(response.body));
    }

    return checkBaseUrl ? apiCalling : secondApi;
  }
}
