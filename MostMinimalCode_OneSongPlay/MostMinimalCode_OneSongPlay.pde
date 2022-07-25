import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates a playlist
//
void setup()
{
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  song1 = minim.loadFile("groove.mp3"); //able to pass absolute path, file name & extension, and URL
}//End setup
//
void draw(){
  if () println("There are", ,"loops left.");
  if () println("Looping Infinity");
  if ( song1.isPlaying() && !song1.isLooping() ) println("Play Once");
}//End draw
//
void keyPressed()
{
  //First Play Button
  if ( key=='p' || key=='P' ) song1.play(); //Parameter is milli-seconds from start of audio file to start playing
  //
  //Alternate Play Button, as a finite loop() && infinite loop()
  //Only press a number for this code below
  println(key);
  if ( key=='1' ) { //LOOP Function Once
    if ( key=='1' ) println("Looping Once");
    String keystr = String.valueOf(key);
    println("Number of Repeats is", keystr);
    int loopNum = int(keystr);
    song1.loop(loopNum); //Parameter is Parameter is number of repeats
    //if ( 
  }//End LOOP Function Once
  if (key=='i' || key=='I' ) song1.loop(); //Infinite Loop, no parameter OR -1
  if ( key >= '2' || key=='0' ) println ("I donot loop that much, press i for infinite loop");
  //
}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End MAIN Program
