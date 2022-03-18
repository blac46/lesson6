import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Final extends StatefulWidget {
  const Final({Key? key}) : super(key: key);

  @override
  _FinalState createState() => _FinalState();
}

class _FinalState extends State<Final> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 300,
                width: width*15,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/inbox.gif'),
                        fit: BoxFit.fill
                    )
                ),
              ),
              SizedBox(height: 15,),
              Text('Email Address Verification',
                style: TextStyle(fontWeight:FontWeight.bold,fontSize: 30 ),),
              Text('Email the code sent to steve@gmail.com',
              style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 24,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                      ),
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.circle,size: 10,)),
                    ),
                    Container(
                      height: 50,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                      ),
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.circle,size: 10,)),
                    ),
                    Container(
                      height: 50,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                      ),
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.circle,size: 10,)),
                    ),
                    Container(
                      height: 50,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                      ),
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.circle,size: 10,)),
                    ),
                    Container(
                      height: 50,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                      ),
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.circle,size: 10,)),
                    ),
                    Container(
                      height: 50,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                      ),
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.circle,size: 10,)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('Didnt receive the code?',style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('     Resend',style: TextStyle(color: Colors.blue),),
                    SizedBox(height: 15 ,),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              GestureDetector(
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
                    child: Text('Verify',
                      style: TextStyle(
                          color: Colors.white
                      ),),
                  ),
                ),
                onTap: (){
                  print('good');
                },
              ),
              SizedBox(height: 10,),
              GestureDetector(
                child: Container(
                  height: 70,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Center(
                    child: Text('Clear',
                      style: TextStyle(
                          color: Colors.blue
                      ),),
                  ),
                ),
                onTap: (){
                  print('good');
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
