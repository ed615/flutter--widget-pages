import 'package:flutter/material.dart';
import 'package:futurebuilder/webview.dart';

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

        
        primarySwatch: Colors.red,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

class ToggleButtonSayfa extends StatefulWidget {


  @override
  _ToggleButtonSayfaState createState() => _ToggleButtonSayfaState();
}

class _ToggleButtonSayfaState extends State<ToggleButtonSayfa> {
 var tListe = [true,true,false]; //durumlar listede tutulur


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        
        
        title: Text('Toggle Button'),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            ToggleButtons(
              children: [
                Icon(Icons.looks_one),
                Icon(Icons.looks_two),       
                Icon(Icons.looks_3),         
              ], 
              isSelected: tListe,//listeye gore hareket eder
                onPressed:(int secilenIndeks){
                  print("${secilenIndeks+1} butonu secildi");

                  setState(() {//secildigi an tam tersi olarak guncellenir
                    tListe[secilenIndeks] = !tListe[secilenIndeks];
                  });
                }
              )

          ],
        ),
      ),
      floatingActionButton:FloatingActionButton.extended(
            icon: Icon(Icons.arrow_right),
            label: Text("Sonraki"),
            onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> WebViewSayfa()));
            }
       ) ,

    );
  }
}
