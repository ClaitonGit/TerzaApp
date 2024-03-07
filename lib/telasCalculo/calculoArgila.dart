import 'package:flutter/material.dart';
import 'package:terzaapp/telasCalculo/CalSapataCircular/CirculaSemAgua.dart';
import 'package:terzaapp/telasCalculo/CalSapataCircular/SapataCircularAgua.dart';
import 'package:terzaapp/telasCalculo/CalSapataCorrida/CorridaSemAgua.dart';
import 'package:terzaapp/telasCalculo/CalSapataCorrida/SapataCorridaAgua.dart';
import 'package:terzaapp/telasCalculo/CalSapataRetangular/RetangularSemAgua.dart';
import 'package:terzaapp/telasCalculo/CalSapataRetangular/SapataRetangularAgua.dart';
import 'package:terzaapp/telasCalculo/calculoQuadradaSemAgua.dart';
import 'package:terzaapp/telasCalculo/calculoSapataAgua.dart';



class CalArgila extends StatefulWidget {
  CalArgila({super.key});

  @override
  State<CalArgila> createState() => _CalArgilaState();
}

class _CalArgilaState extends State<CalArgila> {
  TextEditingController nstpController = TextEditingController();

  String infoText = "Informe o Nstp!";

  void resetFild(){
    nstpController.text = "";
    infoText = "Informe o Nstp";
  }

  void resultNstp (){

    setState(() {
      double Nspt = double.parse(nstpController.text);

      if (Nspt>0 && Nspt <=2){
        infoText = ("y = 13kn/m³"  "\n"  "c = 1" "\n"  "Angulo = 0 ");
      }
      if (Nspt>3 && Nspt <=5){
        infoText = ("y = 15kn/m³" "\n"  "c = 1.3"  "\n"  "Angulo = 0 ");
      }
      if (Nspt>6 && Nspt <=10){
        infoText = ("y = 17kn/m³"  "\n"  "c = 2.6"  "\n"  "Angulo = 0");
      }
      if (Nspt>11 && Nspt <=19){
        infoText = ("y = 19kn/m³" "\n" "c = 6" "\n" "Angulo = 0 ");
      }
      if (Nspt > 19){
        infoText = ("y = 20kn/m³" "\n" "c = 15" "\n" "Angulo = 0 ");
      }


    });

  }


  void SapataAgua(){
    Navigator.push(context,MaterialPageRoute(builder:(context) => CalSapataAgua(),),);
  }
  void SapataSemAgua(){
    Navigator.push(context,MaterialPageRoute(builder:(context) => CalSapatasemAgua(),),);
  }
  void SapataCorridaAgua(){
    Navigator.push(context,MaterialPageRoute(builder:(context) => CalSapataCorridaAgua(),),);
  }
  void SapataCorridaSemAgua(){
    Navigator.push(context,MaterialPageRoute(builder:(context) => CalSapataCorridaSemAgua(),),);
  }
  void SapataCircularAgua(){
    Navigator.push(context,MaterialPageRoute(builder:(context) => CalSapataCircularAgua(),),);
  }
  void SapataCircularSemAgua(){
    Navigator.push(context,MaterialPageRoute(builder:(context) => CalSapataCircularSemAgua(),),);
  }
  void SapataRetangularAgua(){
    Navigator.push(context,MaterialPageRoute(builder:(context) => CalSapataRetangularAgua(),),);
  }
  void SapataRetangularSemAgua(){
    Navigator.push(context,MaterialPageRoute(builder:(context) => CalSapataRetangularSemAgua(),),);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text("Argila e siltis argilosos"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: resetFild,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image(
              image: AssetImage("images/logo1.png"),
              height: 50,
              width: 50,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Informe Nspt:",
                labelStyle: TextStyle(
                  fontSize: 22,
                  color: Colors.black38,
                  fontWeight: FontWeight.bold,
                ),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 20),
              controller: nstpController,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                child: ElevatedButton(
                  onPressed: resultNstp,
                  child: Text("Lançar",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      )),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    primary: Colors.blueGrey,
                  ),
                ),
              ),
            ),
            Text(
              infoText,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey, fontSize: 19,),
            ),


            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text("Selecione a sapata:",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(2.0),
              child: Text("Sapata Quadrada: ", style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),),
            ),

            Padding(
              padding: EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: ElevatedButton(
                      onPressed: SapataAgua,
                      child: Text("Lençol Freático",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                          )),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        primary: Colors.grey,
                      ),
                    ),

                  ),
                  Align(alignment: Alignment.topLeft),

                  GestureDetector(
                    child: ElevatedButton(
                      onPressed: SapataSemAgua,
                      child: Text("Não Freático",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                          )),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        primary: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(2.0),
              child: Text("Sapata Corrida:", style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),),
            ),

            Padding(
              padding: EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: ElevatedButton(
                      onPressed: SapataCorridaAgua,
                      child: Text("Lençol Freático",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                          )),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        primary: Colors.grey,
                      ),
                    ),

                  ),
                  Align(alignment: Alignment.topLeft),

                  GestureDetector(
                    child: ElevatedButton(
                      onPressed: SapataCorridaSemAgua,
                      child: Text("Não Freático",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                          )),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        primary: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(2.0),
              child: Text("Sapata Retângular: ", style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),),
            ),

            Padding(
              padding: EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: ElevatedButton(
                      onPressed: SapataRetangularAgua,
                      child: Text("Lençol Freático",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                          )),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        primary: Colors.grey,
                      ),
                    ),

                  ),
                  Align(alignment: Alignment.topLeft),

                  GestureDetector(
                    child: ElevatedButton(
                      onPressed: SapataRetangularSemAgua,
                      child: Text("Não Freático",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                          )),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        primary: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(2.0),
              child: Text("Sapata Circular: ", style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),),
            ),

            Padding(
              padding: EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: ElevatedButton(
                      onPressed: SapataCircularAgua,
                      child: Text("Lençol Freático",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                          )),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        primary: Colors.grey,
                      ),
                    ),

                  ),
                  Align(alignment: Alignment.topLeft),

                  GestureDetector(
                    child: ElevatedButton(
                      onPressed: SapataCircularSemAgua,
                      child: Text("Não Freático",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                          )),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        primary: Colors.grey,
                      ),
                    ),
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
