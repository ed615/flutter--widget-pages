import 'package:flutter/material.dart';
import 'package:futurebuilder/dropdownlist.dart';
/*CHECKBOX WIDGET ILE SECIM YAPMA */
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

class CheckBoxSayfa extends StatefulWidget {

  @override
  _CheckBoxSayfaState createState() => _CheckBoxSayfaState();
}

class _CheckBoxSayfaState extends State<CheckBoxSayfa> {
 bool ravenclawDurum = false;
 bool gryffindorDurum = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox Widget (CheckboxListTile)",style: TextStyle(fontSize: 15),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
              CheckboxListTile(
                title: Text("Ravenclaw "),
                checkColor: Colors.blue,
                activeColor: Colors.yellowAccent,
                value: ravenclawDurum,
                controlAffinity: ListTileControlAffinity.leading,
                onChanged:(veri){//herhangi bir isimlendirme
                  print("Ravenclaw Secildi: $veri");
                  setState(() {//veri icerigi guncellenir
                    ravenclawDurum = veri;//veri icerigi aktarilir
                  });
                } ,
                ),
                CheckboxListTile(
                title: Text("Gryffindor "),
                checkColor: Colors.red,
                activeColor: Colors.yellowAccent,
                value: gryffindorDurum,
                controlAffinity: ListTileControlAffinity.leading,
                onChanged:(veri){
                  print("Gryffindor Secildi: $veri");
                  setState(() {
                    gryffindorDurum = veri;
                  });
                } ,
                )
              ]
          ),
      ),
      floatingActionButton:FloatingActionButton.extended(
            icon: Icon(Icons.arrow_right),
            label: Text("Sonraki"),
            onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> DropDownListSayfa()));
            }
       ) ,

    );
  }
}
