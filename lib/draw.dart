import 'package:flower_e_commerce/MyCart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class draw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icons/sea.webp',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/man.png')),
                accountName: Text(
                  'Eng abdo',
                ),
                accountEmail: Text('5abdo.mo.kamal@gamil.com'),
              ),
              ListTile(
                title: const Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                  ),
                ),
                leading: const Icon(
                  Icons.home,
                  size: 32,
                  color: Colors.black87,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text(
                  'My cart',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                  ),
                ),
                leading: const Icon(
                  CupertinoIcons.cart_fill,
                  size: 30,
                  color: Colors.black87,
                ),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => MyCart()));
                },
              ),
              ListTile(
                title: const Text(
                  'About',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                  ),
                ),
                leading: const Icon(
                  CupertinoIcons.book_solid,
                  size: 30,
                  color: Colors.black87,
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Text(
                  'Log out',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                  ),
                ),
                leading: const Icon(
                  Icons.logout_outlined,
                  size: 30,
                  color: Colors.black87,
                ),
                onTap: () {},
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 270),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Developed by Abdo_kamal',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                      Icon(
                        Icons.circle_outlined,
                        size: 16,
                      ),
                      Text(
                        '2023',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                    ],
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
