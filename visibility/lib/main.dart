import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
     
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool kontrol=false; //gorunurlugu kontrol icin

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text(kontrol?"DOGRU":"YANLIS",//true ise dogru yazacak
                 style: TextStyle(color:kontrol?Colors.green:Colors.red)),
                 //dogru yazisi yesil yanlis yazisi kirimizi goruntulenecek
            ElevatedButton(
              child:Text("A"),
              onPressed:(){
               setState(() {//sayfa guncellenecegi icin setstate
                 kontrol = true;
               });
            } ),
            ElevatedButton(
              child: Text("B"),
              onPressed:(){
                setState(() {
                  kontrol= false;
                });
              } ),
          ],
        ),
      ),

    );
  }
}
