import 'package:flutter/material.dart';
import 'package:futurebuilder/switch.dart';
/*SLIDER HAREKETINE GORE ATANAN DEGER DEGISIR VE ALTINDA GOSTERILIR*/
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

        
        primarySwatch: Colors.green,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

class SliderSayfa extends StatefulWidget {


  @override
  _SliderSayfaState createState() => _SliderSayfaState();
}

class _SliderSayfaState extends State<SliderSayfa> {
  double anlikDeger = 50.0;
  //sliderda value olacak anlik deger
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
              //setstate'te guncellendiginden anlik gorunur
              Text("Slider degeri ${anlikDeger.toInt()}"),
              Slider(
                min: 0.0,
                max: 100.0,
                activeColor:Colors.green,
                inactiveColor: Colors.lime,
                value: anlikDeger,//anlik degere gore 
                onChanged: (double a){//slider degistiginde
                  setState(() {
                    anlikDeger = a;
                  });
                },

              ),
              
              ]
          ),
      ),
      floatingActionButton:FloatingActionButton.extended(
            icon: Icon(Icons.arrow_right),
            label: Text("Sonraki"),
            onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SwitchSayfa()));
            }
       ) ,

    );
  }
}
