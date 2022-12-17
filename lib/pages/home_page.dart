import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: 230,
            color: Colors.blue,
          ),
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 50,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("{ }", style: TextStyle(color: Colors.white,fontSize: 35 ),),
                        Text("Devkit",style: TextStyle(color: Colors.white,fontSize: 35 ),),
                      ],
                    ),
                    SizedBox(height: 25,),
                    Container(
                      width: double.infinity,
                      margin:  const EdgeInsets.symmetric(horizontal: 20),
                      padding: const EdgeInsets.all(20),
                      decoration:  BoxDecoration(
                          color: Colors.white,
                        boxShadow:  [
                          const BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5,
                            offset: Offset(5, 5)
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          const Text(
                            "SIGN UP",
                            style: TextStyle(
                              color: Colors.blue, fontSize: 24,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                          const SizedBox(height: 35,),
                          const TextField(
                            decoration: InputDecoration(
                              hintText: "Name",
                              hintStyle: TextStyle(color: Colors.grey, fontSize: 18)
                            ),
                          ),
                          const SizedBox(height: 20,),
                          const TextField(
                            decoration: InputDecoration(
                                hintText: "Phone Number",
                                hintStyle: TextStyle(color: Colors.grey, fontSize: 18)
                            ),
                          ),
                          const SizedBox(height: 20,),
                          const TextField(
                            decoration: InputDecoration(
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.grey, fontSize: 18)
                            ),
                          ),
                          const SizedBox(height: 20,),
                          TextField(
                            decoration: InputDecoration(
                                hintText: "Password",
                                suffixIcon: IconButton(
                                  onPressed: (){},
                                  icon: const Icon(Icons.remove_red_eye),
                                ),
                                hintStyle: const TextStyle(color: Colors.grey, fontSize: 18)
                            ),
                          ),
                          const SizedBox(height: 50,),
                          SizedBox(
                            width: double.infinity,
                            child: CupertinoButton(
                              onPressed: (){},
                              child: const Text(
                                "CREATE ACCOUNT",
                              ),
                              color: Colors.blue,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already have an account?",),
                        TextButton(
                            onPressed: (){},
                            child: const Text("Sign In")
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
