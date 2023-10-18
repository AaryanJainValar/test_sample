import 'package:flutter/material.dart';
import 'package:test_sample/modal_class/user_list_api.dart';

class UserDetailScreen extends StatefulWidget {
  UserListApi userListApi;
  int index;
   UserDetailScreen({super.key, required this.userListApi, required this.index});

  @override
  State<UserDetailScreen> createState() => _UserDetailScreenState();
}

class _UserDetailScreenState extends State<UserDetailScreen> {
  var index =0 ;


  @override
  void initState() {
    super.initState();
  WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    index =widget.index;
  });

  }

  @override
  Widget build(BuildContext context) {
    // index =widget.index;

    return Scaffold(
      appBar: AppBar(
        title: Text("Practice"),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(80),
              child: Image.network(widget.userListApi.data?[index].avatar ?? ""),
            ),
            Text('My Name is ${widget.userListApi.data?[index].firstName} ${widget.userListApi.data?[index].lastName}'),
            Text('My email Id is ${widget.userListApi.data?[index].email}'),
            Text('My user Id is ${widget.userListApi.data?[index].id}'),
            Text('My slogan is ${widget.userListApi.support?.text ?? ""}')
          ],
        ),
      ),
    );
  }
}
