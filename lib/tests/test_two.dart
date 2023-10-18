import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:test_sample/modal_class/user_list_api.dart';
import 'package:test_sample/screens/user_detail_screen.dart';
import 'package:test_sample/user_item_view.dart';
import 'package:http/http.dart' as http;

class TestTwoScreen extends StatefulWidget {
  const TestTwoScreen({super.key});

  @override
  State<TestTwoScreen> createState() => _TestTwoScreenState();
}


class _TestTwoScreenState extends State<TestTwoScreen> {
  String baseUrl = "https://reqres.in/api/users";
   UserListApi userListApi = UserListApi();
   List<Data> userListing = [];


  @override
  void initState() {
    super.initState();
  WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
    await getApi();
    setState(() {

    });
  });


  }

  @override
  Widget build(BuildContext context) {
    // debugPrint('test = ${userListApi.perPage}');
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice"),
    centerTitle: true,
    backgroundColor: Colors.lightGreen,
    ),
      body: ListView.separated(
        padding: EdgeInsets.only(top: 10),
        shrinkWrap: true,
        itemCount: userListing.length,
          itemBuilder: (context, index) {
          // return UserItemView(userListApi: userListing[index]);
          return InkWell(onTap: () {
            debugPrint("Index : $index");
            Navigator.push(context, MaterialPageRoute(builder: (context) =>  UserDetailScreen(userListApi: userListApi, index: index,),));
          },
              child: UserItemView(userListApi: userListApi,index: index,));
          }, separatorBuilder: (BuildContext context, int index) {
          return Divider(
            height: 20,
            color: Colors.lightGreen,
            thickness: 1,

          );
      },),
    );
  }


  Future<void> getApi() async {

/*    Map<String, dynamic> bodyMap  = {};
      bodyMap["page"] = "2";*/

    // var response = await http.post(Uri.parse(baseUrl),body: bodyMap);
    var response = await http.get(Uri.parse(baseUrl));

    try {

      userListApi = UserListApi.fromJson(json.decode(response.body));
      userListing = userListApi.data ?? [];
     } catch (e) {
        debugPrint("$e");
    }
    if(response.body.isEmpty) {
      print('damn');
    } else {
      debugPrint('damn1 = ${baseUrl}');
      debugPrint('damn4 = ${userListing.length}');
      print('damn2 = ${response.body.toString()}');

    }
    // return  userListing;
    }
    // debugPrint('test1 = ${response.body}');

  }

