import 'package:flutter/material.dart';

void main() {
  runApp(Scribe());
}

@override
void initState() {
  _toggle = false;
}

bool _toggle = false;

class Scribe extends StatefulWidget {
  @override
  State<Scribe> createState() => _ScribeState();
}

class _ScribeState extends State<Scribe> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Login',
              style: TextStyle(),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Image.asset('assets/images/bike.jpeg'),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('Orange Scribe', style: TextStyle(color: Colors.orange),) 
                ),
                Container(
                  padding: EdgeInsets.all(18.0),
                  alignment: Alignment.centerLeft,
                  child: Text("Login to your account", style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email_rounded),
                        border: OutlineInputBorder(),
                        labelText: 'Email'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: TextField(
                    obscureText: !_toggle,
                    decoration: InputDecoration(
                        prefixIcon: new Icon(Icons.lock),
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: 'Enter a Password',
                        suffixIcon: IconButton(
                            onPressed: (load),
                            icon: Icon(_toggle
                                ? Icons.visibility
                                : Icons.visibility_off))),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(18.0),
                  alignment: Alignment.centerRight,
                  child: Text("Forgot Password?", style: TextStyle(color: Colors.orange),),
                ),
                Padding(
                    padding: EdgeInsets.all(1.0),
                    child: ElevatedButton( style: ElevatedButton.styleFrom(primary: Colors.orange, 
                    minimumSize: const Size.fromHeight(50)),
                      child: Text('Sign In'),
                      onPressed: () {},
                    )),
                    Container()
              ]),
            ),
          )),
    );
  }

  void load() {
    setState(() {
      _toggle = !_toggle;
    });
  }
}
