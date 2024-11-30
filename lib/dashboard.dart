import 'package:flutter/material.dart';
import 'package:housing_app/data.dart';
import 'package:housing_app/house_details.dart';
import 'package:housing_app/wishlist.dart';

import 'package:iconsax/iconsax.dart';

class Dashboard_view extends StatefulWidget {
  const Dashboard_view({super.key});

  @override
  State<Dashboard_view> createState() => _Dashboard_viewState();
}

class _Dashboard_viewState extends State<Dashboard_view> {
  int selectedTab = 0;
  int hoveredIndex = -1;
  List Tab = ['House', 'Apartment', 'Flat', 'Villa', 'Land'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // const Padding(
                  //   padding: EdgeInsets.all(8.0),
                  // child:
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Location',
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                      SizedBox(height: 5),
                      Text('LosAngeles, CA',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, right: 8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        print('Saved pressed');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WishList_view()));
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(75, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: const Icon(Iconsax.save_2,
                          color: Colors.black, size: 25),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Discover Best\nSuitabe Property',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Tab.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: customButton(index),
                    );
                  },
                ),
              ),
              const Text(
                'Best for you',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 10),
              if (selectedTab == 0)
                customWidget(House)
              else if (selectedTab == 1)
                customWidget(Apartment)
              else if (selectedTab == 2)
                customWidget(Flat)
              else if (selectedTab == 3)
                customWidget(Villa)
              else if (selectedTab == 4)
                customWidget(Land),
              const Text(
                'Nearby your location',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              customTile(pop),
            ],
          ),
        ),
      ),
    );
  }

  Widget customButton(index) {
    return InkWell(
        borderRadius: BorderRadius.circular(10),
        onHover: (hovering) {
          setState(() {
            hoveredIndex = index;
          });
        },
        onTap: () {
          setState(() {
            selectedTab = index;
          });
        },
        child: Container(
          height: 42,
          width: 90,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: selectedTab == index
                ? const Color.fromRGBO(15, 47, 68, 1)
                : const Color.fromRGBO(234, 241, 255, 1),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              if (hoveredIndex == index)
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
            ],
          ),
          child: Text(
            '${Tab[index]}',
            style: TextStyle(
              color: selectedTab == index ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ));
  }

  Widget customTile(data) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
          // shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () {
                  print('Pressed');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HouseDetails_view(
                                product: data[index],
                              )));
                },
                child: Container(
                    width: 400,
                    margin: const EdgeInsets.only(
                      top: 10,
                      left: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromRGBO(234, 241, 255, 1),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Container(
                            width: 80,
                            height: 80,
                            margin: const EdgeInsets.only(
                              right: 15,
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  data[index]['image'],
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20),
                            SizedBox(
                              height: 25,
                              child: Text(
                                data[index]['title'],
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            SizedBox(
                                height: 20,
                                child: Text(data[index]['address'],
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                    ))),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Icon(Icons.bed,
                                      color: Colors.amber, size: 20),
                                  Text(
                                    '${data[index]['beds']} Beds',
                                  ),
                                  const Icon(Icons.bathtub,
                                      color: Colors.amber, size: 20),
                                  Text(
                                    '${data[index]['baths']} Baths',
                                  ),
                                  const Icon(Icons.car_rental_sharp,
                                      color: Colors.amber, size: 20),
                                  Text(
                                    '${data[index]['garage']} Garage',
                                  ),
                                ])
                          ],
                        ),
                      ],
                    )));
          }),
    );
  }
}
