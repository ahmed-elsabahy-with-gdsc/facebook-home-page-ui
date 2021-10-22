
import 'package:facebook_ui/screens/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[600],

      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(

              children: [
                const SizedBox(height: 60,),

                const Text("Facebook",style:TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),),
                const SizedBox(height: 60,),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: TextFormField(
                    maxLines: 1,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(

                      hintText: "User Name",
                      //   labelText: "User Name",
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),

                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:30,right: 30),
                  child: TextFormField(
                    maxLines: 1,
                    keyboardType: TextInputType.visiblePassword,

                    decoration: InputDecoration(

                      hintText: "Password",
                      //  labelText: "Password",
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),

                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:30),
                  child: MaterialButton(onPressed: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const HomePage()));
                  },


                    child: const Text(

                      "Login In",
                      style:  TextStyle(color:Colors.white,fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    color: Colors.blue [900],),
                ),


              ],
            ),
          ),
        ),

      ),
    );
  }
}
