import 'package:apiintegrationall/view/gridviedata%20show/gridviewapi_dio.dart';
import 'package:apiintegrationall/view/homePage/home-page.dart';
import 'package:apiintegrationall/view/postapi/regestion.dart';
import 'package:flutter/material.dart';

import '../DioHomePage/dio_home_page.dart';
import '../Filter/filtter.dart';
import '../GetApiWithoutmodel/getapiwithoutmodel.dart';
import '../NewsApps/news_apps.dart';
import '../Weathers/screen_weather.dart';
import '../dicnoary/dicnoary.dart';
import '../loginApi/login_api.dart';
import '../updateApi/update_Api.dart';

class AllPageRoute extends StatelessWidget {
  const AllPageRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('All Page Route'),),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>HomeScreen()));
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
            SizedBox(height: 8,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> LoginAPi()));
              },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )
                  ),

                  child:Text('Login',style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),)),
            ),
            SizedBox(height: 8,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>UpdateApi()));
              },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )
                  ),

                  child:Text('Update api',style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),)),
            ),
            SizedBox(height: 8,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>Getapiwithoutmodel()));
              },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )
                  ),

                  child:Text('GetWithoutmodle api',style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),)),
            ),
            SizedBox(height: 8,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>FilterScreen()));
              },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )
                  ),

                  child:Text('FilterScreen',style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),)),
            ),
            SizedBox(height: 8,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>NewsApps()));
              },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )
                  ),

                  child:Text('Ecommerce',style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),)),
            ),
            SizedBox(height: 8,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>DictionaryHomePage()));
              },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )
                  ),

                  child:Text('DictionaryHomePage',style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),)),
            ),
            SizedBox(height: 8,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>WeatherHome()));
              },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )
                  ),

                  child:Text('WeatherHome',style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),)),
            ),
            SizedBox(height: 8,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>DioHomePage()));
              },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )
                  ),

                  child:Text('Ecommerce',style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),)),
            ),
            SizedBox(height: 8,),

            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>GridViewApiDio()));
              },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )
                  ),

                  child:Text('GridViewAPi',style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),)),
            ),
            SizedBox(height: 8,),
          ],
        ),
      ),

    );
  }
}
