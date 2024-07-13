import 'package:flutter/material.dart';
import 'package:flower_e_commerce/Model/category.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({
    Key? key,
    required this.cat,
  }) : super(key: key);
  final Category cat;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  var isShow = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Screen'),
        backgroundColor: Color.fromRGBO(123, 186, 54, 1),
        // actions: [
        //   Row(
        //     children: [
        //       badges.Badge(
        //         badgeContent: Text(
        //           '3',
        //           style: TextStyle(color: Colors.white, fontSize: 15),
        //         ),
        //         child: InkWell(
        //           onTap: () {},
        //           child: Icon(
        //             CupertinoIcons.cart,
        //             size: 35,
        //           ),
        //         ),
        //       ),
        //       SizedBox(
        //         width: 15,
        //       ),
        //       Text(
        //         '\$10',
        //         style: TextStyle(
        //           fontSize: 25,
        //           fontWeight: FontWeight.bold,
        //         ),
        //       ),
        //       SizedBox(
        //         width: 10,
        //       ),
        //     ],
        //   ),
        // ],
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView(children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 400,
                child: Image.asset(
                  widget.cat.image,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '\$ ${widget.cat.salary}',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 25,
                    width: 50,
                    color: Color.fromARGB(255, 208, 69, 115),
                    child: Center(
                      child: Text(
                        'New',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemSize: 22,
                    itemPadding: EdgeInsets.symmetric(horizontal: 1),
                    itemBuilder: (ctx, _) => Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    onRatingUpdate: (index) {},
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(
                      Icons.location_on,
                      color: Colors.green,
                      size: 25,
                    ),
                    onPressed: () {},
                  ),
                  Text(
                    'Flower Shop',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  child: Text(
                    'Details :',
                    style: TextStyle(fontSize: 19),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'A flower, sometimes known as a bloom or blossom, is the reproductive structure found in flowering plants (plants of the division Angiospermae). Flowers produce gametophytes, which in flowering plants consist of a few haploid cells which produce gametes. The "male" gametophyte, which produces non-motile sperm, is enclosed within pollen grains; ',
                textAlign: TextAlign.start,
                overflow: TextOverflow.fade,
                maxLines: isShow ? 3 : null,
              ),
              const SizedBox(
                height: 0,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    isShow = !isShow;
                  });
                },
                child: Text(isShow ? 'Show More' : 'Show less'),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
