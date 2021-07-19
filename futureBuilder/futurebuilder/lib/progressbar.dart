import 'package:flutter/material.dart';
import 'package:futurebuilder/radioButton.dart';

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

class ProgressBarSayfa extends StatefulWidget {


  @override
  _ProgressBarSayfaState createState() => _ProgressBarSayfaState();
}

class _ProgressBarSayfaState extends State<ProgressBarSayfa> {
  bool gorunurluk = false;//kontrol icin
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progressbar Visibility'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
              Visibility(
                  child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.greenAccent),
                ),
                visible: gorunurluk,

              ),
              ElevatedButton(
                child: Text("Goster"),
                onPressed:(){
                  setState(() {
                    gorunurluk = true;
                    print("progressbar gorunur");
                  });
                }
              ),

              ElevatedButton(
                child: Text("Kaybet"),
                onPressed:(){
                  setState(() {
                    gorunurluk = false;
                    print("progressbar gorunmez");
                  });
                }
              )              
              
              ]
          ),
      ),
      floatingActionButton:FloatingActionButton.extended(
            icon: Icon(Icons.arrow_right),
            label: Text("Sonraki"),
            onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> RadioButtonSayfa()));
            }
       ) ,

    );
  }
}
