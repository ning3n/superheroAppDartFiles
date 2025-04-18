import 'package:flutter/material.dart';

class SuperheroSearchScreen extends StatefulWidget {
  const SuperheroSearchScreen({super.key});

  @override
  State<SuperheroSearchScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SuperheroSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Superhero Search"),
        ),
        body: Column(
            children: [
                TextField(
                    decoration: InputDecoration(
                        hintText: "Busca un heroe",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder()),
                        onChanged: (text){
                            print("El texto es $text");
                        },
                )
            ],
        ),
    );
  }
}