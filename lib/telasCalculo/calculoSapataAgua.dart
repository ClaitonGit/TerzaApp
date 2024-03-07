import 'package:flutter/material.dart';

class CalSapataAgua extends StatefulWidget {
  const CalSapataAgua({super.key});


  @override
  State<CalSapataAgua> createState() => _CalSapataAguaState();
}

class _CalSapataAguaState extends State<CalSapataAgua> {

  TextEditingController larguraControlle = TextEditingController();
  TextEditingController cotaControlle = TextEditingController();
  TextEditingController nvAguaControlle = TextEditingController();
  TextEditingController coesaoControlle = TextEditingController();
  TextEditingController ncControlle = TextEditingController();
  TextEditingController pesoControlle = TextEditingController();
  TextEditingController nqControlle = TextEditingController();
  TextEditingController nyControlle = TextEditingController();
  TextEditingController infotexControlle = TextEditingController();



  String infoText = "Informe os valores!";

  void resetFild(){
    infotexControlle.text = "";
    infoText = "Informe os valores!";
  }

  void resultQuadradaAgua(){

    setState(() {
      double largura = double.parse(larguraControlle.text);
      double cota = double.parse(cotaControlle.text);
      double nv = double.parse(nvAguaControlle.text);
      double coesao = double.parse(coesaoControlle.text);
      double nc = double.parse(ncControlle.text);
      double peso = double.parse(pesoControlle.text);
      double nq = double.parse(nqControlle.text);
      double ny = double.parse(nyControlle.text);


      double bu = largura*2;
      double v1 = (bu+cota) - nv;
      double v2 = bu - v1;
      double v3 = bu - v2;

      if (nv < cota){
        double result = ((1.3*coesao*nc)+((cota*peso+(nv*(peso-10)))*nq*0.8)+(peso*(largura/2)*ny*1));
        infoText = "Sapata quadrada: (${result})";

      }else{
        double result = ((1.3*coesao*nc)+(cota*peso*nq)+(0.8*(v2*peso+v3*(peso-10))/bu)*(largura/2)*ny);
        infoText = "Sapata quadrada: (${result})";
      }




    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text("Sapata quadrada com água"),
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
              image: AssetImage("images/tabel.jpeg"),
              height: 200,
              width: 200,
            ),

            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Informe a largura:",
                labelStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.black38,
                  fontWeight: FontWeight.bold,
                ),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 13),
              controller: larguraControlle,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Informe a cota:",
                labelStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.black38,
                  fontWeight: FontWeight.bold,
                ),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 13),
              controller: cotaControlle,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Nivel da água:",
                labelStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.black38,
                  fontWeight: FontWeight.bold,
                ),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 13),
              controller: nvAguaControlle,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Coesão do solo:",
                labelStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.black38,
                  fontWeight: FontWeight.bold,
                ),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 13),
              controller: coesaoControlle,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Nc:",
                labelStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.black38,
                  fontWeight: FontWeight.bold,
                ),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 13),
              controller: ncControlle,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "peso especifico:",
                labelStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.black38,
                  fontWeight: FontWeight.bold,
                ),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 13),
              controller: pesoControlle,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Nq:",
                labelStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.black38,
                  fontWeight: FontWeight.bold,
                ),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 13),
              controller: nqControlle,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Ny:",
                labelStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.black38,
                  fontWeight: FontWeight.bold,
                ),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 13),
              controller: nyControlle,
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                child: ElevatedButton(
                  onPressed: resultQuadradaAgua,
                  child: Text("Calcular",
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
          ],
        ),
      ),
    );
  }
}
