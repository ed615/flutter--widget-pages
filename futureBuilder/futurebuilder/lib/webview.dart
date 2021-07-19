import 'package:flutter/material.dart';
import 'package:futurebuilder/zamantarih.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
    );
  }
}

class WebViewSayfa extends StatefulWidget {

  @override
  _WebViewSayfaState createState() => _WebViewSayfaState();
}

class _WebViewSayfaState extends State<WebViewSayfa> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text('Web View'),
      ),
      body: WebView(
          initialUrl: "https://www.wizardingworld.com/",
          /*javascriptmode ozelligi ile site javascript
          destegiyle goruntulenebilir.*/
          javascriptMode: JavascriptMode.unrestricted,

      
      ),
      floatingActionButton:FloatingActionButton.extended(
            icon: Icon(Icons.arrow_right),
            label: Text("Sonraki"),
            onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SaatTarihSayfa()));
            }
       ) ,

    );
  }
}
