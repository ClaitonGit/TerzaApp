import 'package:flutter/material.dart';
import 'package:terzaapp/telasCalculo/calculoAreia.dart';
import 'package:terzaapp/telasCalculo/calculoArgila.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();

}

class _HomeState extends State<Home> {

  void calAreia(){
    Navigator.push(context,MaterialPageRoute(builder:(context) => CalAreia()),);
  }
  void argila(){
    Navigator.push(context,MaterialPageRoute(builder:(context) => CalArgila()),);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('Teza App'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo1.png", width: 300, height: 240,),
            Padding(padding: EdgeInsets.all(23)),
            Text("Selecione o tipo de solo!", style: TextStyle(
              fontSize: 22,
            ),
            ),
            Padding(
              padding: EdgeInsets.all(34),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                GestureDetector(
                  onTap: calAreia,
                  child: Image.asset("images/areia.png",height: 100, width: 150,),
                ),

                    Align(alignment: Alignment.topLeft),
                GestureDetector(
                    onTap: argila,
                  child: Image.asset("images/argila.png", height: 100, width: 120,),
                ),
              ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(

                    child: Text("Areias e siltis arenosos", style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      height:  -6,
                    ),),
                  ),
                  Align(alignment: Alignment.topLeft),

                  GestureDetector(
                    child: Text("Argilas e siltis argilosos", style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      height:  -6,
                    ),),
                  ),
                ],
              ),
            ),

          ],

        ),
      ),
    );
  }
}
