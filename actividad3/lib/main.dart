import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PokedexWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokedex'),
      ),
      body: CarouselSlider(
        options: CarouselOptions(
          height: 400.0,
          enlargeCenterPage: true,
        ),
        items: [
          _buildPokemonCard(1, "Bulbasaur", "Planta", "assets/bulbasur.png"),
          _buildPokemonCard(2, "Gengar", "Fantasma", "assets/gengar.png"),
          _buildPokemonCard(3, "Pikachu", "Electrico", "assets/pikachu.png")
        ],
      ),
    );
  }

  Widget _buildPokemonCard(
      int pokedexNumber, String name, String type, String imagePath) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 150,
            height: 150,
          ),
          ListTile(
            title: Text("$name"),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTag(type),
                Text("Pokédex : # $pokedexNumber"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTag(String type) {
    Color tagColor;
    switch (type.toLowerCase()) {
      case "planta":
        tagColor = Colors.green;
        break;
      case "fantasma":
        tagColor = Colors.purple;
        break;
      case "electrico":
        tagColor = Colors.yellow;
        break;
      default:
        tagColor = Colors.grey;
    }

    return Container(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        color: tagColor,
        borderRadius: BorderRadius.circular(8),
      ),
      width: 200,
      child: Text(
        type,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PokedexWidget(),
  ));
}
