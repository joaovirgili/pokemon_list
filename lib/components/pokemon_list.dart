import 'package:flutter/material.dart';
import 'package:pokemon_list/components/pokemon_item.dart';
import 'package:pokemon_list/components/type_tag.dart';

class PokemonList extends StatelessWidget {
  const PokemonList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return PokemonItem(
            urlImage:
                "https://github.com/fanzeyi/pokemon.json/blob/master/images/001.png?raw=true",
            number: "#001",
            name: "Bulbasaur",
            types: [
              TypeTag(name: "GRASS", color: Colors.green),
              TypeTag(name: "POISON", color: Colors.purple),
            ],
            isFavorit: false,
          );
        },
        itemCount: 4,
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
      ),
    );
  }
}