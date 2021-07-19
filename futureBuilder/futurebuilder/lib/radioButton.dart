import 'package:flutter/material.dart';
import 'package:futurebuilder/slider.dart';

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

        
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

class RadioButtonSayfa extends StatefulWidget {

  @override
  _RadioButtonSayfaState createState() => _RadioButtonSayfaState();
}

class _RadioButtonSayfaState extends State<RadioButtonSayfa> {
  int radioDeger = 0;
  //basilan radio button degerine gore guncellenir
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radiobutton (RadioListTile Widget)',style: TextStyle(fontSize: 17),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
             RadioListTile(
               title: Text("HufflePuff"),
               activeColor: Colors.orangeAccent,
               value: 1, //buna basilinca veri 1 olur
               groupValue: radioDeger,//bu degere baglidir
               onChanged:(int veri){
                 setState(() {
                   print("Hufflepuff secildi: $veri");
                   radioDeger = veri;//radio degeri guncellenir
                 });
               }
               ),

             RadioListTile(
               title: Text("Slytherin"),
               activeColor: Colors.green,
               value: 2, //buna basilinca veri 2 olur
               groupValue: radioDeger,//bu degere baglidir
               onChanged:(int veri){
                 setState(() {
                   print("Slytherin secildi: $veri");
                   radioDeger = veri;//radio degeri guncellenir
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SliderSayfa()));
            }
       ) ,

    );
  }
}
