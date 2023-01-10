import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/pages/home.dart';
import 'package:project/pages/signup.dart';

import '../module/post.dart';
import '../networkerhelper.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
bool isVisible=false;
bool check=false;
final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Padding(
                 
            padding: EdgeInsets.symmetric(vertical: 80),
            child: ListView(children: [
            Image.asset('images/mountainelogo 4.png',height: 135,width: 147,),
            Text('Login to your account',style: TextStyle(color: Colors.blue,fontSize: 20,
            fontWeight: FontWeight.w700),),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(hintText: 'Email',
               focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
                borderSide: BorderSide(color: Colors.blue,width: 2,)
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                borderSide: BorderSide(color: Colors.blue,width: 1,)
              ),),
              
            ),
            SizedBox(
              height: 20,
            ),
             TextField(
              controller: passwordController,
              obscureText: isVisible,
              decoration: InputDecoration(hintText: 'password',
              suffixIcon: GestureDetector(
                onTap: () {
                  
               setState(() {
                    isVisible= !isVisible;
               });
                },
                child: Icon(
                  !isVisible ?Icons.visibility:Icons.visibility_off,)),
               focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
                borderSide: BorderSide(color: Colors.blue,width: 2,)
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                borderSide: BorderSide(color: Colors.blue,width: 1,)
              ),),
              
            ),
            
         Container(
          child:Row(children: [ Checkbox(
                        value: check,
                        onChanged: (bool? value) {
                          setState(() {
                            check=value!;
                          });
                        },
                      ),
                    
            Text('Remember me',style: TextStyle(fontSize: 18),),
         Padding(
             padding: EdgeInsets.only(left: 70),
             child: Text('forget password ?',style: TextStyle(fontSize: 18,color: Colors.blue),
                 ),
         ),],)
       
            ),
            
            SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 300,
              height: 40,
  
              child: ElevatedButton(onPressed: ()async {
                var phoneData = phoneController.text.toString();
              var passwordData = passwordController.text.toString();
//9849203704
//Nepal@12344
                  Login logindata = await NetworkHelper().getLogin(  phone: phoneData,
                        password: passwordData,);

                  var status = logindata.status;
                  print(status);

                  if (status == 'success') {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Home();
                    }));
                  } else {
                    print('error ho');
                  }
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: Text('sign in',style: TextStyle(fontSize: 20),)),
            ),
            SizedBox(
              height:20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text('Dont have account ?',style: TextStyle(fontSize: 18),),
            TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return SignUp();
                
                },
                ),
                );
              },
              style: TextButton.styleFrom(backgroundColor: Colors.white),
              child: Text('signup',style: TextStyle(color: Colors.blue,fontSize: 20),)),
              SizedBox(
                height: 20,
              ),
              
              ]),
            ),
          
            ]),
          ),
        ),
      ),
    );
  }
}