import 'package:flutter/material.dart';
import 'package:futurebuilder/progressbar.dart';

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

class DropDownListSayfa extends StatefulWidget {

  @override
  _DropDownListSayfaState createState() => _DropDownListSayfaState();
}

class _DropDownListSayfaState extends State<DropDownListSayfa> {
    var binalar = <String>[];
    //secilecekler bir listede tutulur
    String secilen = "Ravenclaw";
    //ilk goruntulendiginde gosterilecek secim
    @override
  void initState() {//baslangicta calisacak fonksiyon
    super.initState();
    binalar.add("Ravenclaw");
    binalar.add("Hufflepuff");
    binalar.add("Syltherin");
    binalar.add("Gryffindor");
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown List (DropdownMenuItem)",style: TextStyle(fontSize: 15)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
               DropdownButton<String>(//stringlerden olust. icin
                value: secilen, //degerler buna bagli
                /*listedeki veriler map icinde tutulur items sayesinde teker
                teker satirlar olusturulur*/
                items: binalar.map<DropdownMenuItem<String>>((String value){
                  return DropdownMenuItem<String>(
                    value: value,//string degerler dropdown listesini olusturuyor
                    child: Text("Bina: $value", style: TextStyle(color: Colors.indigo,fontSize:20)),
                  );
                }).toList(),//tum bu degerler listelenir
                icon: Icon(Icons.arrow_drop_down),
                /*onchanged ile secilen item yakalanir*/
                onChanged:(String secilenVeri){//itemstaki string value parametresi
                  setState(() {
                    secilen = secilenVeri;
                  });
                },
                )
              
              ]
          ),
      ),
    floatingActionButton:FloatingActionButton.extended(
            icon: Icon(Icons.arrow_right),
            label: Text("Sonraki"),
            onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ProgressBarSayfa()));
            }
       ) ,
    );
  }
}
