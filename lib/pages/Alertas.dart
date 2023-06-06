import 'package:flutter/material.dart';

class Alertas extends StatefulWidget {
  @override
  State<Alertas> createState() => _AlertasState();
}

class _AlertasState extends State<Alertas> {
  // const Alertas({super.key});  // nose, con esto no funciona
  bool _subscripto = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent[200],
        title: Text("AlertDialog"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 222, 1, 1)),
              ),
              child: Text("Subscibirse"),
              onPressed: () {
                _mostrarAlerta(context);
              },
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              _subscripto ? "Subscripto" : "No subscripto",
            ),
          ],
        ),
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
      barrierDismissible:
          false, //para que no pueda cerrar el dialogo sin contestar
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            title: Text(
              _subscripto ? "Desubscribirse" : "Subscribirse",
              ),
            content: Text(
              _subscripto ? "Seguro queres Desubscribirte?" : "Seguro queres subscribirte?",
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    print("No");
                    Navigator.pop(context);
                  },
                  child: Text("No")),
              TextButton(
                  onPressed: () {
                    print("Si");
                    setState(() {
                      _subscripto = !_subscripto;
                    });
                    Navigator.pop(context);
                  },
                  child: Text("Si"))
            ]);
      },
    );
  }
}
