import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostRegesttion extends StatefulWidget {
  const PostRegesttion({super.key});

  @override
  State<PostRegesttion> createState() => _PostRegesttionState();
}

class _PostRegesttionState extends State<PostRegesttion> {
  final TextEditingController emailController=TextEditingController();
  final TextEditingController passController=TextEditingController();
  regesterUser(String email,String password)async{
    Uri url=Uri.parse("https://reqres.in/api/register");
    var data={
      "email":email,
      "password":password,
    };
    try{
      var response=await http.post(url,body:data);
      if(response.statusCode == 200){
        var jsonData=jsonDecode(response.body);
        print(jsonData);

      }else{
        var error =jsonDecode(response.body);
        print("Unable to Regstion${error}");
      }

    }catch(e){
      print("Error:$e");


    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Regestion Post Api"),),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: passController,
              decoration: InputDecoration(
                hintText: 'Pasword',
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(onPressed: (){
                regesterUser(emailController.text.toString(),passController.text.toString());
                

              },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )
                  ),

                  child:Text('Get Api',style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),)),
            ),

          ],
        ),
      ),

    );
  }
}
