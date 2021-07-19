import 'package:flutter/material.dart';
import 'package:futurebuilder/checkbox.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        
        primarySwatch: Colors.grey,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

   //asenkron fonk. olusturuldu
   Future<int> faktoriyelHesapla(int a) async{
     int sonuc =1;
     for(var i=1;i<=a;i++){
       sonuc = sonuc*i;
     }
     return sonuc;
   }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        
        
        title: Text( 'Future Builder Faktoriyel Fonksiyonu',style: TextStyle(fontSize:17)),
      ),
      body: Center(
        
        
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            //donus tipine gore olusturulur
          FutureBuilder<int>(
             future: faktoriyelHesapla(5),
             builder:(context, snapshot){//snapshot return degerini temsil eder
               if(snapshot.hasError){
                 print("HATA SONUCU: ${snapshot.error}");
               }
               if(snapshot.hasData){
                 return Text("VERİLER: ${snapshot.data}");
               }
               else{
                 return Text("Veri Alınamadı");
                }
             }

             ),
          
          ],
        ),
      ),
      floatingActionButton:FloatingActionButton.extended(
            icon: Icon(Icons.arrow_right),
            label: Text("Sonraki"),
            onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> CheckBoxSayfa()));
            }
       ) ,

    );
  }
}
