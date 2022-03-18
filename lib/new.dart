import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson6/assistance.dart';
import 'package:firebase_auth/firebase_auth.dart';

final auth = FirebaseAuth.instance;


class New extends StatefulWidget {
  const New({Key? key}) : super(key: key);

  @override
  _NewState createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  TextEditingController adminControllar =TextEditingController();
  TextEditingController passwordControllar =TextEditingController();
  bool isvisible=true;
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
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                width: width*15,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/frontdesk.jpg'),
                    fit: BoxFit.fill
                  )
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Welcome Back!',style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 20),),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Login',style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 20),),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius:BorderRadius.circular(15),
                  ),
                  child:TextField(
                    controller:adminControllar ,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '   admin',
                      suffixIcon: IconButton
                        (onPressed: (){}, icon: Icon(Icons.check_circle_rounded,color: Colors.blue,))
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius:BorderRadius.circular(15),
                  ),
                  child:TextField(
                    obscureText: isvisible,
                    controller: passwordControllar,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                        hintText: '   password',
                        suffixIcon: IconButton
                          (onPressed: (){
                          setState(() {
                            isvisible = !isvisible;
                          });
                        }, icon: Icon(isvisible? Icons.visibility_off : Icons.visibility))
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
                //
              ElevatedButton(
                onPressed: () async {
                  try {
                    final currentuser = await auth.signInWithEmailAndPassword(
                      email: adminControllar.text,
                      password: passwordControllar.text,
                    );
                    if (currentuser != null) {
                      print(currentuser.credential);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Assistance(),
                        ),
                      );
                    }
                  } on FirebaseAuthException catch (e) {
                    print(e.message.toString());
                  }
                },
                child: Text('submit'),
              ),
              SizedBox(height: 5,),
              Text('forget password?')
            ],
          ),
        ),
      ),
    );
  }
}
