import 'package:flutter/material.dart';

class Page01 extends StatelessWidget {
  const Page01({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent[200],
        title: Text("Tratamientos de Odontología"),
      ),
      body: Container(
        color: Color(0xffFF0000 ),
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TratamientoButton(
                nombre: "Limpieza Dental",
                descripcion: "Remueve la placa y el sarro para mantener una buena salud bucal.",
              ),
              SizedBox(height: 10),
              TratamientoButton(
                nombre: "Blanqueamiento Dental",
                descripcion: "Aclara el color de los dientes para lograr una sonrisa más brillante.",
              ),
              SizedBox(height: 10),
              TratamientoButton(
                nombre: "Ortodoncia",
                descripcion: "Corrige la posición de los dientes y la mandíbula para mejorar la mordida y la estética.",
              ),
              SizedBox(height: 10),
              TratamientoButton(
                nombre: "Implantes Dentales",
                descripcion: "Reemplaza los dientes perdidos con implantes que funcionan como raíces artificiales.",
              ),
              SizedBox(height: 10),
              TratamientoButton(
                nombre: "Endodoncia",
                descripcion: "Trata los problemas de pulpa dental y salva los dientes dañados o infectados.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TratamientoButton extends StatelessWidget {
  final String nombre;
  final String descripcion;

  const TratamientoButton({
    Key? key,
    required this.nombre,
    required this.descripcion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // Color y opacidad de la sombra
            spreadRadius: 2, // Radio de expansión de la sombra
            blurRadius: 5, // Desenfoque de la sombra
            offset: Offset(0, 2), // Desplazamiento de la sombra en eje X y Y
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(20),
          primary: Colors.orange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Column(
          children: [
            Text(
              nombre,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              descripcion,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
