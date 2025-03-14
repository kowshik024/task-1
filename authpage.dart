import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class otp extends StatefulWidget {
  const otp({super.key});


  @override
  State<otp> createState() => _otpState();
}

class _otpState extends State<otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 190),
          child: Text("Welcome to",style: TextStyle(fontSize: 30,color: Colors.green),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10,right: 170),
          child: Text("Chitsoft",style: TextStyle(fontSize: 30,color: Colors.green,fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 10,),

        Image(image: NetworkImage("https://static.toiimg.com/photo/89045175.cms"),width: 300,height: 320,),
        Text("OTP",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        Text("We have send you a verification code to your"),
        Text("Your mobile number 123945005"),

        Padding(
          padding: const EdgeInsets.all(19.0),
          child: TextFormField(

            decoration: InputDecoration(
                suffixIcon: Icon(Icons.send),
                hintText: "Enter Your number",
                border: OutlineInputBorder(

                )
            ),
          ),
        ),
        Text("Enter OTP"),
        SizedBox(height: 10,),
        Pinput(length: 6,defaultPinTheme: PinTheme(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(),
                borderRadius: BorderRadius.circular(10)
            )
        ),),

        SizedBox(height: 20,),
        Container(
          height: 50,
          width: 250,
          child: Center(child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
          decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(12))

          ),
        ),



      ],),
    );
  }
}