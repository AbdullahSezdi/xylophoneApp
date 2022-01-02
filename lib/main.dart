import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());


class XylophoneApp extends StatelessWidget {

  void playsound(int a){
    final player=AudioCache();
    player.play('note$a.wav');
  }

  Expanded buildkey({Color color,int soundnumber,String note}){

    return Expanded(
      child: TextButton(
        style:TextButton.styleFrom(backgroundColor:color),
        onPressed: (){
          playsound(soundnumber);
        },child: Text("$note",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold
      ),),

      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body:SafeArea(child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildkey(color:Colors.red,soundnumber: 1,note:"Do"),
            buildkey(color:Colors.orange,soundnumber: 2,note:"Re"),
            buildkey(color:Colors.yellow,soundnumber: 3,note:"Mi"),
            buildkey(color:Colors.green,soundnumber: 4,note:"Fa"),
            buildkey(color:Colors.blue,soundnumber: 5,note:"Sol"),
            buildkey(color:Colors.indigo,soundnumber: 6,note:"La"),
            buildkey(color:Colors.purple,soundnumber: 7,note:"Si"),
            

          ],
        )

        )


      ),
    );
  }
}
