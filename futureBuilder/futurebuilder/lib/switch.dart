import 'package:flutter/material.dart';
import 'package:futurebuilder/togglebutton.dart';

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

        
        primarySwatch: Colors.orange,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SwitchSayfa(),
    );
  }
}

class SwitchSayfa extends StatefulWidget {

  @override
  _SwitchSayfaState createState() => _SwitchSayfaState();
}

class _SwitchSayfaState extends State<SwitchSayfa> {
  bool sKontrol =false;//switch durumu kontrolu
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        
        
        title: Text("Switch Widget"),
      ),
      body: Center(
        
        
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children:[
              Switch(
                activeTrackColor: Colors.yellow,//aktif cubuk rengi
                activeColor: Colors.redAccent,//aktif yuvarlak rengi
                inactiveThumbColor: Colors.black,
                inactiveTrackColor: Colors.grey,

                value: sKontrol,//switch bu degeri baz alir
                onChanged: (veri){//herhangi bir degisken kabul eder
                    setState(() {
                      sKontrol = veri;
                    });
                },
                
              ),
              Text("Switch Durumu: $sKontrol"),
          ],
        ),
      ),
      floatingActionButton:FloatingActionButton.extended(
            icon: Icon(Icons.arrow_right),
            label: Text("Sonraki"),
            onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ToggleButtonSayfa()));
            }
       ) ,

    );
  }
}
