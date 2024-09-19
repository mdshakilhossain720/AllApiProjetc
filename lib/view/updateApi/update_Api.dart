import 'package:apiintegrationall/data/model/update_model.dart';
import 'package:apiintegrationall/data/services/get_api_services.dart';
import 'package:flutter/material.dart';

class UpdateApi extends StatefulWidget {
  const UpdateApi({super.key});

  @override
  State<UpdateApi> createState() => _UpdateApiState();
}

class _UpdateApiState extends State<UpdateApi> {
  TextEditingController nameController =TextEditingController();
  TextEditingController JobCOnrolller=TextEditingController();
 //UpdateModel updateModel=UpdateModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'Name'
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: JobCOnrolller,
              decoration: InputDecoration(
                hintText: 'Job'
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(onPressed: (){
                GetApiServices().updateApi(nameController.text.toString(), JobCOnrolller.text.toString()).then((value){
                  setState(() {
                    setState(() {
                      //updateModel=value!;
                    });

                  });
                });




              },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )
                  ),

                  child:Text('Update',style: TextStyle(
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
