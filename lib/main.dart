import 'package:flutter/material.dart';

//calls the foundation libs

void main(){
//  starting point

runApp(MyApp());
//runApp is the method to call the class to initate the widget

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: MyFirstFlutter(),
    );
  }
}
class MyFirstFlutter extends StatelessWidget {
  const MyFirstFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('welcome'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('subash'),
            Text('suhas'),
            Text('dileep'),
            SizedBox(height: 30,),
            ElevatedButton(
                onPressed: () {

                //  show a snackbar when tne button is clicked
                 ScaffoldMessenger.of(context).
                 showSnackBar(SnackBar(content: Text('you have just clicked')));
                },
                child: Text('click')),
            SizedBox(height: 30,),
            ElevatedButton(
                onPressed: () {

                  //  show a snackbar when tne button is clicked
                  ScaffoldMessenger.of(context).
                  showSnackBar(SnackBar(content: Text('you have just clicked 2nd button')));
                },
                child: Text('click')),

            SizedBox( height: 20,),
            Container(

              width: 300,
              height: 300,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              color: Colors.red,
              child: Text(
                'Hello my container',
                style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox( height: 20,),
            Container(

              width: 300,
              height: 300,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              color: Colors.red,
              child: Text(
                'Hello my container',
                style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 20,
                ),
              ),
            ),
            Row(
              children:
              [Image.asset('assets/family.jpg',
                width: 200,
                height: 200,),
                SizedBox(height: 20,),
InkWell(
  onTap: (){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('You clicked')
    ));
  },
),
       child: Image.asset('assets/familycartoon.jpg',
          width: 200,
          height: 200,),
          SizedBox(height: 20,)
              ],
            ),
          ],
        ),
      ),
    ) ;
  }
}

