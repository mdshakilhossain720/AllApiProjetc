import 'package:apiintegrationall/data/model/cart_diomodel.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioHomePage extends StatefulWidget {
  const DioHomePage({super.key});

  @override
  State<DioHomePage> createState() => _DioHomePageState();
}

class _DioHomePageState extends State<DioHomePage> {
  Cart?cart;
  Future<void>getData() async {
    const String apiUrl = "https://dummyjson.com/carts";

    try{
      Response response =await Dio().get(apiUrl);
      if(response.data!=null){
        setState(() {
          cart=Cart.fromJson(response.data);
        });
      }else{
        throw Exception("Api response isnull ");
      }

    }catch(e){
      print(e.toString());

    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Fetch Data "),
        ),
        body:cart ==null ? Center(child: CircularProgressIndicator(),):
        GridView.builder(
          itemCount: cart!.carts!.length,
            shrinkWrap: true,
            primary: false,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,

                ),
            itemBuilder:(context,index){
              return Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 5,
                child: Column(
                  children: [
                    Image.network(cart!.carts![index].products![0].thumbnail ?? "",height: 140,width: 200,),
                    Text(
                      cart!.carts![index].products![3].title ?? "",
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),

                  ],
                ),


              );
            }));
  }
}
