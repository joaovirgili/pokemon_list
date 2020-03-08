import 'package:flutter/material.dart';
import 'package:pokemon_list/components/type_tag.dart';

class PokemonItem extends StatelessWidget {
  final String urlImage;
  final String number;
  final String name;
  final List<TypeTag> types;
  final bool isFavorit;

  const PokemonItem({
    Key key,
    @required this.urlImage,
    @required this.number,
    @required this.name,
    @required this.types,
    @required this.isFavorit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      child: LayoutBuilder(builder: (context, constraints) {
        return Row(
          children: <Widget>[
            Container(
              height: constraints.maxHeight * 0.85,
              width: constraints.maxHeight * 0.85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey.withOpacity(0.25),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.network(urlImage),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                number,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                name,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(children: types),
                        ],
                      ),
                      Icon(
                        Icons.star,
                        color: isFavorit ? Colors.yellow : Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
