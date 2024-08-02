import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
runApp(Home());
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ostad_second_assginment',
      home: OstadApp(),
    );
  }
}
class OstadApp extends StatefulWidget {
  const OstadApp({super.key});

  @override
  State<OstadApp> createState() => _OstadAppState();
}

class _OstadAppState extends State<OstadApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Greeting app',style: TextStyle(color: Colors.black ),backgroundColor: Colors.white),
      body: Center(
        child: Column(
          children: [
            Text('Hello World',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20.0),),
            Text('Welcome To flutter', style: TextStyle(color: Colors.amber),),
            Image.asset('assets/images/flutter.png',height: 200,width: 200,),
            ElevatedButton(onPressed: () =>showSnackBar(context) ,
              child: Text('press me' ),
            ),
          ],
        ),
      ),

    );
  }
  showSnackBar(context) {
    SnackBar snackBar = SnackBar(
      content: const Text(' Button pressed!',
          style: TextStyle(fontSize: 20)),
      backgroundColor: Colors.indigo,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}



