import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

myApp()
{//Icons
   var music_icon=Icon(
                       Icons.play_circle_filled,
                       size: 100,
                       color: Colors.white,);
  //Main Text Variable
  var text="FunApp";
 //variable for the body
 var url_body_gif="https://raw.githubusercontent.com/Shashwatsingh22/Fun_App/master/Images/Coffin_Dance.gif";
 var body_gif=Image.network(url_body_gif,
                            width: double.maxFinite,
                            height: double.maxFinite,);

//variable for the music
/*var play_button=IconButton(
            icon: music_icon, 
            onPressed:()
            {
              final player = AudioCache();
              player.play("Coffin Dance.mp3");
            });
 */
//Creating an variable for the text function
  var text_func=Text(
                text,
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
                );

 var icon1=Icon(Icons.question_answer);
 var icon2=Icon(Icons.help);

 //creating an variable for the Appbar
 var App_Bar=AppBar(
                    title: text_func,
                    backgroundColor: Colors.purple[700],
                    leading:Image.network("https://raw.githubusercontent.com/Shashwatsingh22/Fun_App/master/Images/64953-emoticon-cute-smiley-illustration-villain-cartoon-emoji-thumb.png"),
                    actions: <Widget>[icon1,icon2],
                    );

var floating_button=FloatingActionButton(
                                     child: Icon(Icons.play_circle_filled),
                                     elevation: 0,
                                    backgroundColor: Colors.deepPurple,
                                    onPressed:()
                                      {
                                           final player = AudioCache();
                                        player.play("Coffin Dance.mp3");
                                     }
                                     );

 //creating an variable for the scaffold function            
  var My_Home=Scaffold(
                      
                      appBar: App_Bar,
                      body: body_gif,
                      backgroundColor: Colors.purple[900],
                      floatingActionButton:floating_button,
                     );

  //Creating an variable for the MaterialApp
  var design=MaterialApp(home: My_Home,
                        debugShowCheckedModeBanner: false,
                         );

   //Returning the Design variable
   return(design);                              
}