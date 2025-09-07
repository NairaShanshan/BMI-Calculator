// the equation of BMI
// var result = weight / pow(height /100,2);
// print(result.round()) ;
import 'package:flutter/material.dart';

class BMIResultsScreen extends StatelessWidget
{


  final bool isMale  ;
  final int age ;
  final int results;

  const BMIResultsScreen(
  {super.key,
    required this.age ,
    required this.isMale ,
    required this.results ,

 }) ;

  String getBMICategory(int bmi) {
    if (bmi < 18.5) {
      return "Underweight ⚠️";
    } else if (bmi >= 18.5 && bmi < 25) {
      return "Normal weight ✅";
    } else if (bmi >= 25 && bmi < 30) {
      return "Overweight ⚠️";
    } else {
      return "Obesity ❌";
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: ()
          {
            Navigator.pop(context);
          },
          icon:const  Icon(Icons.arrow_back_ios),
        ),
        title:const  Center(
          child: Text(
            'BMI RESULTS',
            style: TextStyle(
              fontSize: 30.0
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Text(
              'GENDER : ${isMale ? 'MALE' : 'FEMALE'} ',
              style:const TextStyle(
                fontSize: 30.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 20,),
            Text(
              ' AGE : $age ',
              style:const  TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 20,),
            Text(
              'RESULTS : $results ',
              style: const TextStyle(
                fontSize: 30.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 20,),
            Text(
              getBMICategory(results),
              style:const  TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),


          ],
        ),
      ),
    );
  }
}
