import 'package:flutter/material.dart';

void main() {
  runApp(Field());
}

@override
  void initState() {
    _toggle = false;
  }

bool _toggle = false;


class Field extends StatefulWidget{
  @override
  State<Field> createState() => _FieldState();
}

class _FieldState extends State<Field> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar( 
          title: Text('Customer Details', style: TextStyle(
          ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(child: Center( 
          child:Column( 
            children: [ Padding(padding: EdgeInsets.all(18.0), 
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset('assets/images/ice.jpg'),
            ),
            ),
              Padding( 
                padding: EdgeInsets.all(16.0), 
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_rounded),
                  border: OutlineInputBorder(),
                  labelText: 'Email'
                ),
              ),
              ),
              Padding(padding: EdgeInsets.all(16.0),
              child: TextField(
                obscureText: !_toggle,
                decoration: InputDecoration(
                  prefixIcon: new Icon(Icons.lock),
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter a Password',

                  suffixIcon: IconButton(onPressed: (load), 
                  icon: Icon(
                    _toggle ? Icons.visibility : Icons.visibility_off
                  )
                  )
                ),
              ),
              ),
              Padding(padding: EdgeInsets.all(1.0), 
              child: ElevatedButton(
                child: Text('Sign Up'),
                onPressed: () { },
              )
              ),
            ]
            ),
        )      ,) 
        ),
    );
  }
  
  
  void load() {
    setState(() {
      _toggle = !_toggle; 
  });
  }
}
