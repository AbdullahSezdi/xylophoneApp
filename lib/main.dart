import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());


class XylophoneApp extends StatelessWidget {

  void playsound(int a){
    final player=AudioCache();
    player.play('note$a.wav');
  }

  Expanded buildkey({Color color,int soundnumber}){
    return Expanded(
      child: TextButton(
        style:TextButton.styleFrom(backgroundColor:color),
        onPressed: (){
          playsound(soundnumber);
        },child: Text('Click me',style: TextStyle(color: Colors.white),),

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
            buildkey(color:Colors.red,soundnumber: 1),
            buildkey(color:Colors.orange,soundnumber: 2),
            buildkey(color:Colors.yellow,soundnumber: 3),
            buildkey(color:Colors.green,soundnumber: 4),
            buildkey(color:Colors.blue,soundnumber: 5),
            buildkey(color:Colors.indigo,soundnumber: 6),
            buildkey(color:Colors.purple,soundnumber: 7),
            

          ],
        )

        )


      ),
    );
  }
}
