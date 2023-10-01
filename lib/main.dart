import 'package:flutter/material.dart';
void main()=>{
runApp(App())
};
class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true
        
      ),
      home: app(Name: "kalyan"),
    );
  }
}
class app extends StatefulWidget {
  String Name;
  app({required this.Name});
  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  double a=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        centerTitle: true,
        title: Text(this.widget.Name),
      ),
      body: Center(
        child: Container(
          height: 500,
          width: 200,
          color: Colors.black,

          child:Center(child: Stack(children: [

                        Positioned(bottom: a*3,child: 
            Transform(alignment: Alignment.center,transform: Matrix4.identity()..setEntry(3, 2, 0.001)..translate(0,0,a*2),child:
            Container(color: Color.fromARGB(255, 255, 0, 0),width: 200,height: 100,
            child: FlutterLogo(),
            ))),
                        Positioned(bottom: a*2,child: 
                        Transform(alignment: Alignment.center,
                        transform: Matrix4.identity()..setEntry(3,2,0.001)
                        ..translate(0.0,0.0,a),child:
            Container(color: Color.fromARGB(255, 195, 245, 14),width: 200,height: 100,
            child: FlutterLogo(),
            ))),
            Positioned(bottom: a*1,left: 0,child: 
            Container(color: const Color.fromARGB(255, 54, 244, 225),width: 200,height: 100,
            child: FlutterLogo(),
            )),

            Slider(value: a, onChanged: (v){setState(() {
              a=v;
            });},min: 0,max: 100,)
          ]),
        ),)
      ),
    );
  }
}