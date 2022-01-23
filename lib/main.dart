import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ThirdPage(),
    );
  }
}
class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00cec9),
        title: Text('TravelEarth',
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
        centerTitle: true,
        leading: BackButton(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff55efc4),
                Color(0xffffeaa7),
                Color(0xff00cec9),
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 94,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  child: Icon(Icons.location_on,size: 80,color: Colors.white,),
                  backgroundColor: Color(0xff00b894),
                  radius: 90,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Find interesting nearby places',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w700
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Allow access to your location to know how far\n are you from attractions,get directions &\n more',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              RaisedButton(
                onPressed: (){},
                color: Color(0xff00b894),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
                padding: EdgeInsets.only(top: 15,bottom: 15,left: 150,right: 150),
                child: Text('Continue',style: TextStyle(fontSize: 25,color: Colors.white),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

