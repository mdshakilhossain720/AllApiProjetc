import 'dart:convert';
import 'dart:typed_data';


import 'package:apiintegrationall/data/model/get_api_model.dart';
import 'package:apiintegrationall/data/model/update_model.dart';
import 'package:http/http.dart' as http;

class GetApiServices{
  Future<List<CommmentsModel>?>getApi()async{
    var data =http.Client();
    var uri=Uri.parse("https://jsonplaceholder.typicode.com/comments");
    var response=await data.get(uri);
    if(response.statusCode == 200){
      var json = response.body;
      return commmentsModelFromJson(json);
    }
    return null;
    
  }
  
 /// update api 

Future<UpdateModel?> updateApi(String name,String job) async {
    var url=Uri.parse("https://reqres.in/api/users/2");
    var response=await http.put(url,body: {
      "name":name,
      "job":job
    });
    try{
      if(response.statusCode == 200){
        UpdateModel model=UpdateModel.fromJson(jsonDecode(response.body));

        print("Data sucde updte");

        return model;
      }

    }catch(e){
      print(e.toString());
    }
    return null;
}

/// withoutmodel get api

 Future<dynamic>getRequetsWithoutModel() async {
    
    try{
      Uri url=Uri.parse("https://jsonplaceholder.typicode.com/users");
      var response=await http.get(url);
      if(response.statusCode == 200){
        final model=jsonDecode(response.body);
        return model;
      }
      
      
    }catch(e){
      
    }
 }


 /// Uploa image api

Future<dynamic>uploadImage(
    Uint8List bytes,
     String fileName
    ) async {
    Uri url=Uri.parse("https://api.escuelajs.co/api/v1/files/upload");
    var request=http.MultipartRequest('POST',url);
    var myFile=http.MultipartFile('file',http.ByteStream.fromBytes(bytes),bytes.length);
    request.files.add(myFile);
    final response=await request.send();
    if(response.statusCode == 201){
      var data=await response.stream.bytesToString();
      return jsonDecode(data);
    }else{
      return null;
    }
}


}