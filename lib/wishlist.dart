import 'package:flutter/material.dart';
import 'package:housing_app/dashboard.dart';
import 'package:housing_app/data.dart';

class WishList_view extends StatefulWidget {
  const WishList_view({super.key});

  @override
  State<WishList_view> createState() => _WishList_viewState();
}

class _WishList_viewState extends State<WishList_view> {
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
                          const Text(
                            'Wishlist',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15, right: 8.0),
                            child: ElevatedButton(
                              onPressed: () {
                                print('back');
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Dashboard_view()));
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: const Size(50, 50),
                                backgroundColor:
                                    const Color.fromRGBO(234, 241, 255, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: const Icon(Icons.arrow_back_ios,
                                  color: Colors.black, size: 20),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      if (wishlist.isEmpty)
                        const Text('No items in wishlist')
                      else
                        customWidget(wishlist),
                    ]))));
  }
}
