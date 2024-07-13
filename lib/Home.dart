import 'package:flower_e_commerce/Data/dummydata.dart';
import 'package:flower_e_commerce/gridlist.dart';
import 'package:flower_e_commerce/provider/prov.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:provider/provider.dart';

import 'MyCart.dart';
import 'draw.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: draw(),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(123, 186, 54, 1),
        title: const Text(
          'Home',
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          Row(
            children: [
              badges.Badge(
                badgeContent: Consumer<Cartprov>(
                  builder: (context, cart, child) => Text(
                    '${cart.count}',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => MyCart()));
                  },
                  child: const Icon(
                    CupertinoIcons.cart,
                    size: 38,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              // Consumer<Cartprov>(
              //   builder: (ctx, cart, child) => Text(
              //     '\$${cart.salary}',
              //     style: TextStyle(
              //       fontSize: 25,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.only(left: 25),
        itemCount: dummydata.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: .8,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        itemBuilder: (context, index) => gridlist(category: dummydata[index]),
      ),
    );
  }
}
