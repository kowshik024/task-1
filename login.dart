import 'package:flutter/material.dart';


import 'otp.dart';


class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 190),
          child: Text(
            "Welcome to", style: TextStyle(fontSize: 30, color: Colors.green),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 170),
          child: Text("Chitsoft", style: TextStyle(
              fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 15,),

        Image(image: NetworkImage(
            "https://static.toiimg.com/photo/89045175.cms")),

        SizedBox(height: 10,),
        Text("Login",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
        Padding(
          padding: const EdgeInsets.all(19.0),
          child: TextFormField(

            decoration: InputDecoration(
                hintText: "Enter Chit ID",
                border: OutlineInputBorder(

                )
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(19.0),
          child: TextFormField(

            decoration: InputDecoration(
                suffixIcon: Icon(Icons.remove_red_eye),
                hintText: "Enter password",
                border: OutlineInputBorder(

                )
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 220),
          child: Text(
            "Forget password?", style: TextStyle(color: Colors.green),),
        ),
        SizedBox(height: 10,),
        GestureDetector(
          onDoubleTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => otp()));
          },
          child: Container(
            height: 50,
            width: 250,
            child: Center(child: Text("Login", style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white),)),
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(12))

            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("(Or) Login with"),
        ),
        Container(
          height: 50,
          width: 250,
          child: Center(child: Text("Mobile number", style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.green),)),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(12)),

              border: Border.all()

          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 180, right: 170,top: 20),
          child: Text("Guest mode", style: TextStyle(
              fontSize: 10, color: Colors.black,),
          ),
        ),

      ],),
    );
  }
}