import 'package:apiintegrationall/data/model/get_api_model.dart';
import 'package:apiintegrationall/data/services/get_api_services.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CommmentsModel> commentModel=[];
  getComments(){
    GetApiServices().getApi().then((value){
      setState(() {
        commentModel =value!;

      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getComments();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(title: Text("Get Api"),),
      body: ListView.builder(
        itemCount: commentModel.length,
          shrinkWrap: true,
          primary: false,

          itemBuilder: (context,index){
          final apidata=commentModel[index];
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(20),
            child: Row(
              children: [
                CircleAvatar(

                  backgroundColor: Colors.blue[300],
                  child: Text(apidata.id.toString(),style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,

                  ),),
                ),
                SizedBox(
                  width:MediaQuery.of(context).size.width/1.175,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(apidata.name.toString(),style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),),
                      Text(apidata.email.toString(),style: TextStyle(
                        fontSize: 15,
                        //fontWeight: FontWeight.bold,
                      ),),
                      Text(apidata.body.toString(),style: TextStyle(

                      ),),


                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }),

    );
  }
}
