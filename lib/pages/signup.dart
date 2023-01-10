import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/pages/home.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:Center(
       child: SafeArea(
         child: Padding(
           padding:  EdgeInsets.symmetric(vertical: 80),
           child: ListView(children: [
               Image.asset('images/mountainelogo 4.png',height: 135,width: 147,),
                 SizedBox(
                    height: 10,
                  ),
               Text('Create your account',style: TextStyle(color: Colors.blue,fontSize: 20,
                  fontWeight: FontWeight.w700),),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                 
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
                 
                    decoration: InputDecoration(hintText: 'Pasword',
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
                 
                    decoration: InputDecoration(hintText: 'Confirm Pasword',
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
                  
                ElevatedButton(onPressed: () {
        
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Home();
                    
                    },
                    ),
                    );
                  },
                  
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,),
                  child: Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 20),)),  
           ],),
         ),
       ),
     )
    );
    

  }


}