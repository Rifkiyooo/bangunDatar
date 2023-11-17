import 'package:flutter/material.dart';
import 'package:rifki/page/lingkaran_page.dart';
import 'package:rifki/page/persegi_page.dart';
import 'package:rifki/page/persegipanjang_page.dart';
import 'package:rifki/page/segitiga_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Home Page",
            style: TextStyle(
          color: Colors.green
        )),
        backgroundColor: Color(0xFF38FD01),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(child: InkWell(
                  child: CustomMenu(imageAsset: "assets/persegi.jpg",title: "Persegi",),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PersegiPage()));
                },
              ),
              ),
              Expanded(child: InkWell(
              child: CustomMenu(imageAsset: "assets/persegi-panjangjpg.jpg",title: "Persegi Panjang",),
              onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PersegiPanjangPage()));
              },
              ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(child: InkWell(
                child: CustomMenu(imageAsset: "assets/segitiga.png",title: "Segitiga",),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SegitigaPage()));
                },
              ),
              ),
              Expanded(child: InkWell(
                child: CustomMenu(imageAsset: "assets/Lingkaran.webp",title: "Lingkaran",),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>lingkaranPage()));
                },
              ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAsset, required this.title,
  });

  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
        color: Colors.purple.shade300,
        padding: EdgeInsets.symmetric(horizontal:  16, vertical: 8),
        child: Column(
          children: [
            Image.asset(imageAsset, height:  100,),
            Text(title, style: TextStyle(color: Colors.white),),
          ],
        ));
  }
}
