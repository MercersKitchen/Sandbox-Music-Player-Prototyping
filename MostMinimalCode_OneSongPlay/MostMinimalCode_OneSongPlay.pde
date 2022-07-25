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
void draw() {
  if ( song1.isLooping() && song1.loopCount()!=-1 ) println("There are", song1.loopCount(), "loops left.");
  if ( song1.isLooping() && song1.loopCount()==-1 ) println("Looping Infinity");
  if ( song1.isPlaying() && !song1.isLooping() ) println("Play Once");
  println("Song position", song1.position(), "Song Length", song1.length() );
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
  if ( key=='m' || key=='M' ) {//Mute Button
    if ( song1.isMuted() ) {
      song1.unmute();
    } else {
      song1.mute();
    }
  }//End Mute Button
  //
  if ( key=='f' || key=='F' ) song1.skip(1000); // skip forward 1 second (1000 milliseconds)
  if ( key=='r' || key=='R' ) song1.skip(-1000); // skip backwards 1 second (1000 milliseconds)
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End MAIN Program
