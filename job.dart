
import 'dart:io';

void main(){
  ///begin
  print('***************Job as backend Laravel and Flutter***************');
  print('enter your name:');

  String name=stdin.readLineSync()!;
  print('enter your year experirence:');

    ///year of experience
  int year_experience=int.parse(stdin.readLineSync()!);
print('Please enter number skills:');
 int number_skills=int.parse(stdin.readLineSync()!);
   List skills = []; 
for(int i=1;i<=number_skills;i++ ){
  print('enter $i');
String input_skills=stdin.readLineSync()!;
   skills.add(input_skills);
}
 var programmer=Job(skills,
  name,
  year_experience
 );
 var de=programmer.select(skills,year_experience);
 print(de);
}

class Job{
    String name="";
    int year_experience=0;
    var experience;
    var skills=[];
    int salary=0;
    Job(skills,name,year_experience);
    String select(skills,year_experience){
      if((skills.length>=5) & (year_experience >=4)){
        //selecc senior or junior
         this.experience="senior" ;
        switch(skills.length){
          ///select salry 
          case 5:
          this.salary=6000;
          break;
          case 6:
          this.salary=6500;
          break;
           case 7:
           this.salary=9000;
          break;
             case 8:
           this.salary=12000;
          break;
          default:
            this.salary=16000;
        }
      }
      else if((skills.length<5) | (year_experience <=4) ){
        this.experience="junior";
      switch(skills.length){
          case 4:
          this.salary=4500;
             break;
          default:
            this.salary=3000;
        }
      }

return 'Dear ' +this.name+ ' where has  year of experience is '+year_experience.toString()
+' and this is '+ this.experience+
  ', your salary is ' +this.salary.toString();
    }
}  