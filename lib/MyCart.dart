import 'package:flower_e_commerce/provider/prov.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:provider/provider.dart';

class MyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(123, 186, 54, 1),
        title: const Text(
          'My Cart',
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
                  onTap: () {},
                  child: const Icon(
                    CupertinoIcons.cart,
                    size: 35,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Consumer<Cartprov>(
                builder: (ctx, cart, child) => Text(
                  '\$${cart.salary}',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ],
      ),
      body: Consumer<Cartprov>(
        builder: (context, cart, child) => ListView.builder(
            itemCount: cart.Basket.length,
            itemBuilder: (ctx, index) => Column(
                  children: [
                    SizedBox(
                      height: 1,
                    ),
                    Card(
                      elevation: 2,
                      child: ListTile(
                          contentPadding: EdgeInsets.all(5),
                          leading: CircleAvatar(
                            backgroundColor: Colors.black,
                            backgroundImage: AssetImage(
                              (cart.Basket[index].image),
                            ),
                            radius: 40,
                          ),
                          title: Text(
                            ('Product' + ' ${cart.items[index].id}'),
                            style: TextStyle(fontSize: 18),
                          ),
                          subtitle: Text(
                            '\$ ${cart.items[index].salary}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Consumer<Cartprov>(
                            builder: (context, value, child) => IconButton(
                              icon: Icon(
                                CupertinoIcons.minus,
                                size: 32,
                              ),
                              onPressed: () {
                                value.delete(cart.Basket[index]);
                              },
                            ),
                          )),
                    ),
                  ],
                )),
      ),
    );
  }
}
