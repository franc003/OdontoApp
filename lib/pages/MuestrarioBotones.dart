import 'package:flutter/material.dart';

class MuestraBotones extends StatelessWidget {
  const MuestraBotones({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina de tratamientos"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('Elevated Button'),
            ),
            SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {},
              child: Text('Outlined Button'),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: Text('Text Button'),
            ),
            SizedBox(height: 10),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite),
            ),
            SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
            ),
            SizedBox(height: 10),
            DropdownButton<String>(
              value: 'Option 1',
              onChanged: (newValue) {},
              items: [
                DropdownMenuItem(
                  value: 'Option 1',
                  child: Text('Option 1'),
                ),
                DropdownMenuItem(
                  value: 'Option 2',
                  child: Text('Option 2'),
                ),
                DropdownMenuItem(
                  value: 'Option 3',
                  child: Text('Option 3'),
                ),
              ],
            ),
            SizedBox(height: 10),
            ToggleButtons(
              isSelected: [true, false, false],
              onPressed: (index) {},
              children: [
                Icon(Icons.format_bold),
                Icon(Icons.format_italic),
                Icon(Icons.format_underline),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
