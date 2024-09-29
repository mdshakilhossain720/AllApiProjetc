import 'package:apiintegrationall/data/model/caterogy_model.dart';
import 'package:flutter/material.dart';

class NewsApps extends StatefulWidget {
  const NewsApps({super.key});

  @override
  State<NewsApps> createState() => _NewsAppsState();
}

class _NewsAppsState extends State<NewsApps> {
  List<NewsApps>article=[];
  // getNews() async {
  //   NewsModel newApi=NewsModel();
  //   await newApi.getNewsApi();
  //   article=newApi.dataStore;
  //
  // }
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   // getNews();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("News Apps",style: TextStyle(
        fontWeight: FontWeight.bold,
      ),),),

      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              itemCount: article.length,
              shrinkWrap: true,
                primary:false,
                physics: ClampingScrollPhysics(),
                itemBuilder: (context,index){
                final articles=article[index];
              return GestureDetector(
                onTap: (){},
                child: Column(
                  children: [
                   // Image.network(articles.urlToImage!,height: 250,width: 400,fit: BoxFit.cover,),

                  ],
                  
                ),
              );
            })

          ],
        ),
      ),




    );
  }
}
