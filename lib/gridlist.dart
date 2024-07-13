import 'package:flower_e_commerce/Model/category.dart';

import 'package:flower_e_commerce/provider/prov.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'DetailsScreen.dart';

class gridlist extends StatelessWidget {
  final Category category;

  const gridlist({super.key, required this.category});

  void save() {}
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => DetailsScreen(
                      cat: category,
                    )));
      },
      child: Container(
        child: Column(children: [
          Container(
            height: 160,
            child: Image(
              image: AssetImage(category.image),
              fit: BoxFit.fill,
              width: 130,
            ),
          ),
          Row(
            children: [
              Text(
                '\$ ${category.salary}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                width: 70,
              ),
              Consumer<Cartprov>(
                builder: (context, cart, child) => IconButton(
                  onPressed: () {
                    cart.add(category);
                  },
                  icon: const Icon(CupertinoIcons.add),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
