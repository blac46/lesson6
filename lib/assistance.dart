import 'package:flutter/material.dart';
import 'package:lesson6/final.dart';
import 'package:firebase_auth/firebase_auth.dart';

final auth = FirebaseAuth.instance;

class Assistance extends StatefulWidget {
  const Assistance({Key? key}) : super(key: key);

  @override
  _AssistanceState createState() => _AssistanceState();
}

class _AssistanceState extends State<Assistance> {
  @override
  TextEditingController EmailControllar =TextEditingController();
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                width: width*15,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/locl.jpg'),
                        fit: BoxFit.fill
                    )
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Forget Password?',style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 20),),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Dont worry it happens.Please enter the credentails'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('associated with your account'),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextField(
                    controller:EmailControllar ,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.error_outline))
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: GestureDetector(
                    child: Container(
                      height: 70,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(
                          color: Colors.white,
                        ),
                      ),
                      child: Center(
                        child: Text('Recover',
                          style: TextStyle(
                              color: Colors.white
                          ),),
                      ),
                    ),
                    onTap:  (){
                      print('good');
                      if(EmailControllar.text.isEmpty
                          ){
                        print("is empty");
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content:
                          Text("Invalid"),
                            backgroundColor: Colors.blue,
                            duration: Duration(seconds: 1),
                          ),
                        );
                      }else{

                        Navigator.push(context,
                            MaterialPageRoute(
                                builder: (_)=> Final())
                        );
                      };
                    }
                ),
              ),
              SizedBox(height: 15,),
              Text('Try another way?')

            ],
          ),
        ),
      ),
    );
  }
}
