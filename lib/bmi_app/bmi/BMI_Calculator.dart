// the equation of BMI
// var result = weight / pow(height /100,2);
// print(result.round()) ;
import 'dart:math';

import 'package:flutter/material.dart';

import 'bmi_result/BMIResults.dart';



class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});


  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {

  bool isMale = true ;
  double height= 150.0 ;
  double weight=58 ;
  int age=21 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        elevation: 0.0,
        title:const  Center(
          child: Text(
                  'BMI CALCULATOR' ,
            style: TextStyle(
              fontSize: 30 ,
              fontWeight: FontWeight.bold
            ),
          ),
        ),

      ),
      body: Column(
        children:
        [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children:
                [
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(()
                        {
                          isMale =true ;

                        });

                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: isMale ? Colors.pink : Colors.blue[400]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            const Image(
                                image: AssetImage('assets/images/img_2.png') ,
                                height: 80,
                                width: 80,),
                            const SizedBox(
                              height: 7.0,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[600]
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(()
                        {
                         isMale = false ;
                        });

                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color:  isMale ?Colors.blue[400] : Colors.pink
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            const Image(
                                image: AssetImage('assets/images/img_1.png'),
                                height: 80,
                                width: 80,),
                            const SizedBox(
                              height: 7.0,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600]
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  color: Colors.blue[400]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style:const TextStyle(
                            fontSize: 50.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                        value: height,
                        max: 220.0,
                        min: 80.0,
                        thumbColor: Colors.pink,
                        activeColor: Colors.pink,
                        inactiveColor: Colors.white,
                        onChanged:(value)
                        {
                          setState(()
                          {
                            height= value ;

                          });
                          // print(value.round());
                        })
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children:
                [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.blue[400]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[600]
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            '${weight.round()}',
                            style:const TextStyle(
                                fontSize: 50.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              FloatingActionButton(
                                  onPressed: ()
                                  {
                                    setState(()
                                    {
                                      weight-- ;
                                    });
                                  } ,
                                  heroTag: 'weight-',
                                  mini: true,
                                  backgroundColor: Colors.blue[900],
                                  child:const Icon(Icons.remove),
                              ),
                              FloatingActionButton(
                                onPressed: ()
                                {
                                  setState(()
                                  {
                                    weight++ ;
                                  });
                                } ,
                                heroTag: 'weight+',
                                mini: true,
                                backgroundColor: Colors.blue[900],
                                child:const Icon(Icons.add),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.blue[400]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          Text(
                            'AGE',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[600]
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            '$age',
                            style:const TextStyle(
                                fontSize: 50.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              FloatingActionButton(
                                onPressed: ()
                                {
                                  setState(()
                                  {
                                    age-- ;
                                  });
                                } ,
                                heroTag: 'age-',
                                mini: true,
                                backgroundColor: Colors.blue[900],
                                child:const Icon(Icons.remove),
                              ),
                              FloatingActionButton(
                                onPressed: ()
                                {
                                  setState(()
                                  {
                                    age++ ;
                                  });
                                } ,
                                heroTag: 'age+',
                                mini: true,
                                backgroundColor: Colors.blue[900],
                                child:const Icon(Icons.add),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 60.0,
            color: Colors.pink,
            child: MaterialButton(
              onPressed: ()
              {
                double result = weight / pow(height /100,2);
                // print(result.round()) ;

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context)
                        {
                         return BMIResultsScreen(
                           age: age,
                           results: result.round() ,
                           isMale: isMale,
                         );
                        } ,));
              },
              child:const Text(
                'CALCULATE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0
                ),
              ), ),
          ),

        ],
      ),
    );
  }
}

