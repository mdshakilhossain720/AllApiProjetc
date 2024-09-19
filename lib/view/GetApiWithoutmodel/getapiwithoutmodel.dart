
import 'package:apiintegrationall/data/services/get_api_services.dart';
import 'package:flutter/material.dart';

class Getapiwithoutmodel extends StatefulWidget {
  const Getapiwithoutmodel({super.key});

  @override
  State<Getapiwithoutmodel> createState() => _GetapiwithoutmodelState();
}

class _GetapiwithoutmodelState extends State<Getapiwithoutmodel> {
  dynamic postModelData=[];
 bool isLoding=false;
  getPost(){
    GetApiServices().getRequetsWithoutModel().then((value){
      setState(() {
        postModelData =value;
        isLoding =false;

      });
    }).onError((error,stackTrace){
      print(error);

    });


  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPost();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Without model get APi"),),
      body: isLoding? Center(child: CircularProgressIndicator(),):
      ListView.builder(
          itemCount: postModelData.length,
          shrinkWrap: true,
          primary: false,
          itemBuilder:(context,index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
            elevation: 2,
            borderRadius: BorderRadius.circular(20),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  userInfo(index,"Name :",postModelData[index] ["name"].toString()),
                  userInfo(index,"Email :",postModelData[index] ["email"].toString()),
                  userInfo(index,"Street :",postModelData[index] ["address"]["street"].toString()),
                  userInfo(index,"City :",postModelData[index] ["address"]["city"].toString()),
                  userInfo(index,"Zipcode :",postModelData[index] ["address"]["zipcode"].toString()),
                  userInfo(index,"Phone :",postModelData[index] ["phone"].toString()),
                  userInfo(index,"Website :",postModelData[index] ["website"].toString()),
                  userInfo(index,"address:",postModelData[index] ["address"].toString()),




                ],
              ),
            ),
          ),
        );
      }),


    );
  }

  Row userInfo(int index,name,value) {
    return Row(
            children: [
              Text(name,style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.bold,
              ),),

              Flexible(
                child: Text(maxLines: 1,value,style: TextStyle(
                  fontSize: 18,
                  overflow: TextOverflow.ellipsis
                ),),
              ),

            ],
          );
  }
}
