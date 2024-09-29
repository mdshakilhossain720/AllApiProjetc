import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class GridViewApiDio extends StatefulWidget {
  const GridViewApiDio({super.key});

  @override
  State<GridViewApiDio> createState() => _GridViewApiDioState();
}

class _GridViewApiDioState extends State<GridViewApiDio> {



  final dio = Dio();

  void getDio() async {
    final response = await dio.get('https://dummyjson.com/carts');
    print(response);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView Api Dio"),
      ),
      body: GridView.builder(
        itemCount: 20,
          shrinkWrap: true,
          primary: false,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
              mainAxisSpacing: 12,
                crossAxisSpacing: 12,
              ),
          itemBuilder: (context,index){
            return Material(
              borderRadius:BorderRadius.circular(12),
              elevation: 5,
            );
          }),
    );
  }
}
