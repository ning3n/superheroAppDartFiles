import 'package:flutter/material.dart';
import 'package:superhero_app/data/model/superhero_detail_response.dart';

class SuperheroDetailScreen extends StatelessWidget {
  final SuperheroDetailResponse superhero;
  const SuperheroDetailScreen({super.key, required this.superhero});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Superhero {{ ${superhero.name} }}"),
      ),
      body: Column(
        children: [
          Image.network(superhero.url, height: 300, width: double.infinity, fit: BoxFit.cover, alignment: Alignment(0, -0.6)),
          Text(superhero.name, style: TextStyle(fontSize: 28),),
          Text(superhero.realName, style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
          SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Container(height: double.parse(superhero.powerStatsResponse.power), width: 20, color: Colors.red),
                      Text("Power")
                    ],
                  ),
                  Column(
                    children: [
                      Container(height: double.parse(superhero.powerStatsResponse.intelligence), width: 20, color: Colors.blue),
                      Text("Intelligence")
                    ],
                  ),
                  Column(
                    children: [
                      Container(height: double.parse(superhero.powerStatsResponse.strength), width: 20, color: Colors.grey),
                      Text("Strength")
                    ],
                  ),
                  Column(
                    children: [
                      Container(height: double.parse(superhero.powerStatsResponse.speed), width: 20, color: Colors.amberAccent),
                      Text("Speed")
                    ],
                  ),
                  Column(
                    children: [
                      Container(height: double.parse(superhero.powerStatsResponse.durability), width: 20, color: Colors.deepOrange),
                      Text("Durability")
                    ],
                  ),
                  Column(
                    children: [
                      Container(height: double.parse(superhero.powerStatsResponse.combat), width: 20, color: Colors.black),
                      Text("Combat")
                    ],
                  ),
                ]
              ),
            ),         
        ],
      ),
    );
  }
}