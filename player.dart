

import 'dart:convert';
import 'dart:io';
void main(){
  print('**********player*********');
  ///name
   print('please enter your name:');
   String name=stdin.readLineSync()!;
   print('enter your team name:');
    String name_club=stdin.readLineSync()!;
    ///number
     print('enter your team number:');
    int number_shirt=int.parse(stdin.readLineSync()!);
 Player george=Player(
   name:name,
   name_club:name_club,
   number_shirt: number_shirt
    );
 print(george.position(name,name_club,number_shirt));
}
class Player {
String name=""; 
String name_club="";
int number_shirt;

var positions = ['defender','attacker','wings','A goal keeper']; 
  Player({
    this.name="",
    this.name_club="",
    this.number_shirt=0,
  }); 
  String position(name,name_club,number_shirt){
    var position;
    ///selcet position
    if(number_shirt>=0 && number_shirt<=5){
      position=positions[3];
    }else if(number_shirt>5 && number_shirt<=10){
      position=positions[1];
    }else if(number_shirt>10 && number_shirt<=20){
      position=positions[2];
    }
    else if(number_shirt>20 && number_shirt<=30){
      position=positions[0];
    }else{
      position="enter your number correct in range 0 to 30";;
    }
    /////print
     if (number_shirt<30) { 
     return   (name +' ,your club is '+name_club+'your position is ' +position+ ' and the number of  shirt is ' +number_shirt.toString());
     }
     else{
         return position;
     }
  
}
}