import 'package:flutter/material.dart';
import 'package:futurebuilder/main.dart';

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

class SaatTarihSayfa extends StatefulWidget {

  @override
  _SaatTarihSayfaState createState() => _SaatTarihSayfaState();
}

class _SaatTarihSayfaState extends State<SaatTarihSayfa> {
  var tarih = TextEditingController();
  var zaman = TextEditingController();
  //textfield'a gonderilen verilerin kontrolu
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saat/Tarih showTimePicker/showDatePicker',style: TextStyle(fontSize: 15),),
      ),
      body: Center(      
        child: Padding(
          padding: const EdgeInsets.only(right:15.0, left:15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
                TextField( //saat giriniz
                  controller: zaman,
                  decoration:InputDecoration(
                    hintText: "saat giriniz",
                  ),
                  onTap: (){ //tiklanildiginda
                    showTimePicker(//zamani gosterme widgeti
                      context: context,//sinifin icerigi
                      /*acildiginda guncel saati gosterecek*/
                      initialTime: TimeOfDay.fromDateTime(DateTime.now()),
                      ).then((alinanSaat){//bilgiler bu degiskene aktarilir
                        setState(() {
                          //zaman nesnesinin text ozelligine alinan bilgiler atanir
                          zaman.text = "${alinanSaat.hour}:${alinanSaat.minute}";
                        });
                      });//boylece girilen zaman textfield icinde goruntulenir 
                      },
                ),
                TextField( //gun giriniz
                  controller: tarih,
                  decoration:InputDecoration(
                    hintText: "tarih giriniz",
                  ),
                  onTap: (){ //tiklanildiginda
                    showDatePicker(//gunu gosterme widgeti
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1995),
                      lastDate: DateTime(2022),
                      ).then((alinanGun){//bilgiler bu degiskene aktarilir
                        setState(() {
                          print("setState cagrildi");
                          tarih.text = "${alinanGun.day} / ${alinanGun.month}/ ${alinanGun.year}";
                        });
                      });
                      //boylece girilen gun textfield icinde goruntulenir
                  },
                )
            ],
          ),
        ),
      ),
       floatingActionButton:FloatingActionButton.extended(
            icon: Icon(Icons.arrow_right),
            label: Text("Başa Dön"),
            onPressed:(){
               Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage()));
            }
       ) ,

    );
  }
}
