import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState  createState() => _HomeState();
}
class _HomeState extends State<Home>{
  double _salary=0;
  double _creditBalance=0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Credit Card Application'),
      ),
      body:Stack(

        children:[
          Image.asset('img/atm-operation-bank.jpg',
            width: MediaQuery.of(context).size.width,
            height:MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 270,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    decoration : InputDecoration(
                      border: InputBorder.none,
                      labelText:'Salery :',
                      hintText:'Enter Your Salary'
                    ),
                    onChanged: (String value){
                      setState((){
                        _salary= double.parse(value);
                        _creditBalance = calculateCredit(_salary);
                      });
                    }
                  ),
                ),
              ),
              Container(
                height: 60,
                width: 270,
                color: Colors.blue,
                child: Padding(
                  padding:EdgeInsets.all(10),
                  child:Text('Credit Blance : $_creditBalance'),
                ),
              ),
            ]
        ),
          ),
       ],
      ),
    );
  }
  double calculateCredit(double salary){
    if (salary >= 50000){
      return 100000;
    }
    else if (salary >= 80000){
      return 130000;
    }
    else if (salary >=120000){
      return 170000;
    }
    else{
      return 0;
    }

  }
}