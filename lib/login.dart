import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  TextEditingController  emailController = TextEditingController();
  TextEditingController  passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child:  Container(
            padding: EdgeInsets.only(top: 70.0,bottom: 26.0,left: 29.0,right: 29.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                SizedBox(
                  height: 150.0,
                  width: 150.0,
                  child:Image.asset(
                      "assets/images/login_img.jpg"
                  ),
                ),
                _spacer(),
                Text(
                  "Welcome back!",
                  style: TextStyle(fontSize: 20.5,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  child: Column(
                    children: [
                      _spacer(),
                      Text(
                        "Log in to your existing account",
                        style: TextStyle(fontSize: 10.5,),
                      ),
                      _spacer(),
                      _form(),
                      _formB(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [

                          Text("Forgot Password ?",style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      _spacer(),
                      _spacer(),
                      SizedBox(
                        height: 50,
                        width: 170,
                        child: RaisedButton(
                          onPressed: (){},
                          color: Colors.blue[800],
                          textColor: Colors.white,
                          child: Text("Log in".toUpperCase()),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          )
                        )
                        ,
                      ),
                      SizedBox(height: 40,),

                      Text("Or connect using",style: TextStyle(color: Colors.grey),),

                      _socialLogin(),

                      SizedBox(height: 50,),
                      _createAccountLabel()
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _spacer(){
    return  SizedBox(height: 10,);

  }

  Widget _form(){
    return Padding(
      padding:EdgeInsets.only(top: 20.0,bottom: 5.0),
      child: TextFormField(
        controller: emailController,
        decoration: InputDecoration(
          hintText: "Email",
          border: InputBorder.none,
          fillColor: Colors.white,
          filled: true,
          prefixIcon: Icon(Icons.person_outline),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: new BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }

  Widget _formB(){
    return Padding(
      padding:EdgeInsets.only(top: 20.0,bottom: 5.0),
      child: TextFormField(
        controller: passwordController,
        decoration: InputDecoration(
          hintText: "Password",
          border: InputBorder.none,
          fillColor: Colors.white,
          filled: true,
          prefixIcon: Icon(Icons.lock_open),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: new BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }

  Widget _socialLogin(){
    return  Padding(
      padding: const EdgeInsets.only(top:20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          SizedBox(
            height: 40,
            width: 150,
            child: RaisedButton(
                onPressed: (){},
                color: Colors.blue[800],
                textColor: Colors.white,
                child: Text("Facebook"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )
            )
            ,
          ),

          SizedBox(
            height: 40,
            width: 150,
            child: RaisedButton(
                onPressed: (){},
                color: Colors.red[800],
                textColor: Colors.white,
                child: Text("Google"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )
            )
            ,
          ),

        ],
      ),
    );
  }

  Widget _createAccountLabel() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Dont have an account?',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
          ),

          InkWell(
            onTap: () {},
            child: Text(
              'Sign Up',
              style: TextStyle(
                  color: Colors.blue[700],
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }



}
