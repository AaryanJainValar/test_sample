
import 'package:flutter/material.dart';
import 'package:test_sample/modal_class/user_list_api.dart';
import 'package:test_sample/screens/user_detail_screen.dart';

class UserItemView extends StatefulWidget {
  UserListApi userListApi;
  int index;
   UserItemView({super.key, required this.userListApi, required this.index});

  @override
  State<UserItemView> createState() => _UserItemViewState();
}

class _UserItemViewState extends State<UserItemView> {
  String firstName = "";
  String lastName = "";
  var index = 0;


  @override
  void initState() {
    super.initState();
     index = widget.index;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp)  {
      firstName  = widget.userListApi.data?[index].firstName ?? "";
      lastName  = widget.userListApi.data?[index].lastName ?? "";
      setState(() {

      });
    });


  }

  @override
  Widget build(BuildContext context) {
    debugPrint('damn1 =$firstName');
    debugPrint('damn =$lastName');
    return SizedBox(
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          const SizedBox(
            width: 15,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(80),
            child: Image.network(widget.userListApi.data?[index].avatar ?? ""),
          ),
           const SizedBox(
             width: 15,
           ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text(widget.userListApi.firstName ?? "${widget.userListApi.lastName}" ?? ""),
              Text("${firstName} ${lastName}" ,
                style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Text(widget.userListApi.data?[index].email?? "")
            ],
          )
        ],
      ),
    );
  }
}
