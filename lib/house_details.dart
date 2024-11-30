import 'package:flutter/material.dart';
import 'package:housing_app/dashboard.dart';
import 'package:housing_app/data.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

class HouseDetails_view extends StatefulWidget {
  final Map product;

  HouseDetails_view({super.key, required this.product});

  @override
  State<HouseDetails_view> createState() => _HouseDetails_viewState();
}

class _HouseDetails_viewState extends State<HouseDetails_view> {
  @override
  Widget build(BuildContext context) {
    final bool isSaved = wishlist.contains(widget.product);

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
                            'Detail',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15, right: 8.0),
                            child: ElevatedButton(
                              onPressed: () {
                                print('Back');
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Dashboard_view()));
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
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 300,
                          width: 450,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(widget.product['image']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.product['title'].toUpperCase(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                widget.product['address'],
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          customSavedButton(wishlist, isSaved),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(children: [
                        const Icon(Icons.bed, color: Colors.amber, size: 20),
                        Text(
                          '${widget.product['beds']} Beds',
                          style: const TextStyle(color: Colors.black),
                        ),
                        const SizedBox(width: 5),
                        const Icon(Icons.bathtub,
                            color: Colors.amber, size: 20),
                        Text(
                          '${widget.product['baths']} Baths',
                        ),
                        const SizedBox(width: 5),
                        const Icon(Icons.car_rental_sharp,
                            color: Colors.amber, size: 20),
                        Text(
                          '${widget.product['garage']} Garage',
                        ),
                      ]),
                      const SizedBox(height: 10),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage:
                                      AssetImage(widget.product['image']),
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.product['owner'],
                                      style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      'Owner of ${widget.product['title']}',
                                      style: const TextStyle(
                                          fontSize: 12, color: Colors.grey),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                ElevatedButton(
                                    onPressed: () {
                                      final snackBar = SnackBar(
                                        elevation: 0,
                                        behavior: SnackBarBehavior.floating,
                                        backgroundColor: Colors.transparent,
                                        content: AwesomeSnackbarContent(
                                          title: 'Calling...',
                                          message:
                                              '${widget.product['title']} owner has been contacted, Thank you.',
                                          contentType: ContentType.success,
                                        ),
                                      );
                                      ScaffoldMessenger.of(context)
                                        ..hideCurrentSnackBar()
                                        ..showSnackBar(snackBar);
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromRGBO(
                                            16, 49, 68, 1)),
                                    child: const Row(
                                      children: [
                                        Icon(
                                          Icons.call,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          'Call',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Text(
                              '${widget.product['details']}',
                              style: const TextStyle(fontSize: 12),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Gallery',
                              style: TextStyle(fontSize: 16),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                                height: 100,
                                //  width: 100,
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: widget.product['gallery'].length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Container(
                                          width: 100,
                                          height: 100,
                                          margin: const EdgeInsets.only(
                                            right: 15,
                                          ),
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                widget.product['gallery']
                                                    [index],
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                      );
                                    })),
                          ]),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('Price',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${widget.product['price']}',
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              final snackBar = SnackBar(
                                elevation: 0,
                                behavior: SnackBarBehavior.floating,
                                backgroundColor: Colors.transparent,
                                content: AwesomeSnackbarContent(
                                  title: 'Request Sent!',
                                  message:
                                      '${widget.product['title']} owner has been contacted, Thank you.',
                                  contentType: ContentType.success,
                                ),
                              );
                              ScaffoldMessenger.of(context)
                                ..hideCurrentSnackBar()
                                ..showSnackBar(snackBar);
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(16, 49, 68, 1)),
                            child: Text(
                              'Buy Now'.toUpperCase(),
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ]))));
  }

  Widget customSavedButton(wishlist, isSaved) {
    return ElevatedButton.icon(
      onPressed: () {
        setState(() {
          if (isSaved) {
            addToWishlist(widget.product, wishlist);
            print(isSaved);
          } else {
            addToWishlist(widget.product, wishlist);
            print(isSaved);
          }
          isSaved = !isSaved;
        });
      },
      icon: Icon(isSaved ? Icons.bookmark : Icons.bookmark_outline),
      label: Text(
        isSaved ? 'Saved' : 'Save',
        style: TextStyle(fontSize: 10),
      ),
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(100, 54),
        backgroundColor: const Color.fromRGBO(234, 241, 255, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }

  void addToWishlist(product, wishlist) {
    bool isAlreadyInWishlist =
        wishlist.any((item) => item['title'] == product['title']);

    if (isAlreadyInWishlist) {
      print('Product is removed from the wishlist.');
      wishlist.removeWhere((item) => item['title'] == product['title']);
      final snackBar = SnackBar(
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        content: AwesomeSnackbarContent(
          title: 'Removed from wishlist!',
          message:
              '${widget.product['title']} has been removed from your wishlist.',
          contentType: ContentType.warning,
        ),
      );
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(snackBar);
    } else {
      wishlist.add(product);
      print('Product added to the wishlist.');
      final snackBar = SnackBar(
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        content: AwesomeSnackbarContent(
          title: 'Added to wishlist!',
          message:
              '${widget.product['title']} has been added to your wishlist.',
          contentType: ContentType.success,
        ),
      );
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(snackBar);
    }
  }
}
