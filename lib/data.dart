import 'package:flutter/material.dart';
import 'package:housing_app/house_details.dart';

List<Map<String, dynamic>> House = [
  {
    'title': 'CraftMan House',
    'address': '520N Btoudry Ave Los Angeles',
    'image': 'assets/images/house1.jpg',
    'beds': 4,
    'baths': 3,
    'garage': 1,
    'owner': 'Rebbeca Tetha',
    'details':
        'Completely redone in 2021. 4 bedrooms. 2 bathrooms. 1 garage. Amazing curb appeal and entertainment area with water views. Tons of built-ins & extras.',
    'price': 5990000,
    'gallery': [
      'assets/images/house1_1.jpg',
      'assets/images/house1_2.jpg',
      'assets/images/house1_3.jpg'
    ],
  },
  {
    'title': 'Colonial House',
    'address': '85 Elmwood Ave Boston',
    'image': 'assets/images/house2.jpg',
    'beds': 5,
    'baths': 4,
    'garage': 2,
    'owner': 'Daniel Carter',
    'details':
        'Elegant colonial-style house featuring 5 bedrooms, 4 bathrooms, and a 2-car garage. Spacious interior with a charming garden and patio area.',
    'price': 7300000,
    'gallery': [
      'assets/images/house2_1.jpg',
      'assets/images/house2_2.jpg',
      'assets/images/house2_3.jpg'
    ],
  },
  {
    'title': 'Beachside Cottage',
    'address': '78 Ocean Drive Malibu',
    'image': 'assets/images/house3.jpg',
    'beds': 3,
    'baths': 2,
    'garage': 1,
    'owner': 'Sophia Roberts',
    'details':
        'Cozy beachside cottage with stunning sea views. Includes 3 bedrooms, 2 bathrooms, and 1 garage. Perfect for a small family or vacation rental.',
    'price': 3200000,
    'gallery': [
      'assets/images/house3_1.jpg',
      'assets/images/house3_2.jpg',
      'assets/images/house3_3.jpg'
    ],
  },
  {
    'title': 'Urban Penthouse',
    'address': '400 Main St, New York',
    'image': 'assets/images/house4.jpg',
    'beds': 2,
    'baths': 2,
    'garage': 0,
    'owner': 'Liam Carter',
    'details':
        'Stylish penthouse located in the heart of the city. Features 2 bedrooms, 2 bathrooms, and a private rooftop terrace with stunning skyline views.',
    'price': 4500000,
    'gallery': [
      'assets/images/house4_1.jpg',
      'assets/images/house4_2.jpg',
      'assets/images/house4_3.jpg'
    ],
  },
  {
    'title': 'Suburban Family Home',
    'address': '45 Maple Street, Chicago',
    'image': 'assets/images/house5.jpg',
    'beds': 4,
    'baths': 3,
    'garage': 2,
    'owner': 'Emma Johnson',
    'details':
        'Spacious suburban home with a large backyard. Features 4 bedrooms, 3 bathrooms, and a 2-car garage. Perfect for a growing family.',
    'price': 6100000,
    'gallery': [
      'assets/images/house5_1.jpg',
      'assets/images/house5_2.jpg',
      'assets/images/house5_3.jpg'
    ],
  },
];

List<Map<String, dynamic>> Apartment = [
  {
    'title': 'Sunny Apartment',
    'address': '112 Beach Road, Miami',
    'image': 'assets/images/apartment1.jpg',
    'beds': 2,
    'baths': 1,
    'garage': 0,
    'owner': 'Ava Smith',
    'details':
        'Modern 2-bedroom apartment with a panoramic city view. Features 1 bathroom and no garage. Great for singles or couples.',
    'price': 3500000,
    'gallery': [
      'assets/images/apartment1_1.jpg',
      'assets/images/apartment1_2.jpg',
      'assets/images/apartment1_3.jpg'
    ],
  },
  {
    'title': 'City Center Flat',
    'address': '240 Park Ave, New York',
    'image': 'assets/images/apartment2.jpg',
    'beds': 3,
    'baths': 2,
    'garage': 1,
    'owner': 'Olivia Brown',
    'details':
        'Spacious 3-bedroom apartment located in the heart of the city. Includes 2 bathrooms and 1 garage. Perfect for urban living.',
    'price': 5200000,
    'gallery': [
      'assets/images/apartment2_1.jpg',
      'assets/images/apartment2_2.jpg',
      'assets/images/apartment2_3.jpg'
    ],
  },
  {
    'title': 'Luxury Penthouse',
    'address': '321 Skyline Tower, Los Angeles',
    'image': 'assets/images/apartment3.jpg',
    'beds': 4,
    'baths': 3,
    'garage': 2,
    'owner': 'Isabella Clark',
    'details':
        'Luxury penthouse with breathtaking views of the skyline. 4 bedrooms, 3 bathrooms, and a 2-car garage. Ultimate luxury living.',
    'price': 7500000,
    'gallery': [
      'assets/images/apartment3_1.jpg',
      'assets/images/apartment3_2.jpg',
      'assets/images/apartment3_3.jpg'
    ],
  },
];

List<Map<String, dynamic>> Flat = [
  {
    'title': 'Downtown Flat',
    'address': '456 King Street, San Francisco',
    'image': 'assets/images/flat1.jpg',
    'beds': 2,
    'baths': 1,
    'garage': 0,
    'owner': 'Lucas Williams',
    'details':
        'Affordable flat in a prime downtown location. 2 bedrooms, 1 bathroom, and no garage. Ideal for young professionals.',
    'price': 2300000,
    'gallery': [
      'assets/images/flat1_1.jpg',
      'assets/images/flat1_2.jpg',
      'assets/images/flat1_3.jpg'
    ],
  },
  {
    'title': 'Cozy Flat',
    'address': '50 Oak Street, Chicago',
    'image': 'assets/images/flat2.jpg',
    'beds': 1,
    'baths': 1,
    'garage': 0,
    'owner': 'Ethan Johnson',
    'details':
        'Compact and cozy flat perfect for solo living. Features 1 bedroom, 1 bathroom, and no garage. Great value in a prime location.',
    'price': 1500000,
    'gallery': [
      'assets/images/flat2_1.jpg',
      'assets/images/flat2_2.jpg',
      'assets/images/flat2_3.jpg'
    ],
  },
  {
    'title': 'Elegant Flat',
    'address': '78 Maple Lane, Boston',
    'image': 'assets/images/flat3.jpg',
    'beds': 3,
    'baths': 2,
    'garage': 1,
    'owner': 'Charlotte Evans',
    'details':
        'Elegant flat with 3 bedrooms, 2 bathrooms, and 1 garage. Located in a family-friendly neighborhood with easy access to amenities.',
    'price': 4200000,
    'gallery': [
      'assets/images/flat3_1.jpg',
      'assets/images/flat3_2.jpg',
      'assets/images/flat3_3.jpg'
    ],
  },
];

List<Map<String, dynamic>> Villa = [
  {
    'title': 'Lakeview Villa',
    'address': '123 Lakefront Drive, Seattle',
    'image': 'assets/images/villa1.jpg',
    'beds': 5,
    'baths': 4,
    'garage': 2,
    'owner': 'Mia Taylor',
    'details':
        'Stunning 5-bedroom villa overlooking a serene lake. Features 4 bathrooms, 2-car garage, and luxurious interiors with a private pool.',
    'price': 9000000,
    'gallery': [
      'assets/images/villa1_1.jpg',
      'assets/images/villa1_2.jpg',
      'assets/images/villa1_3.jpg'
    ],
  },
  {
    'title': 'Luxury Beach Villa',
    'address': '99 Coral Reef Lane, Hawaii',
    'image': 'assets/images/villa2.jpg',
    'beds': 6,
    'baths': 5,
    'garage': 3,
    'owner': 'Benjamin Harris',
    'details':
        'Exclusive beach villa with 6 bedrooms, 5 bathrooms, and 3-car garage. Private beach access and breathtaking ocean views.',
    'price': 15000000,
    'gallery': [
      'assets/images/villa2_1.jpg',
      'assets/images/villa2_2.jpg',
      'assets/images/villa2_3.jpg'
    ],
  },
  {
    'title': 'Hilltop Villa',
    'address': '212 Mountain View Rd, California',
    'image': 'assets/images/villa3.jpg',
    'beds': 4,
    'baths': 3,
    'garage': 2,
    'owner': 'Olivia Martin',
    'details':
        'Magnificent villa on a hilltop with panoramic views. 4 bedrooms, 3 bathrooms, and 2-car garage. A perfect blend of nature and luxury.',
    'price': 9500000,
    'gallery': [
      'assets/images/villa3_1.jpg',
      'assets/images/villa3_2.jpg',
      'assets/images/villa3_3.jpg'
    ],
  },
];

List<Map<String, dynamic>> Land = [
  {
    'title': 'Seafront Land',
    'address': '300 Beachfront Rd, Malibu',
    'image': 'assets/images/land1.jpg',
    'beds': 0,
    'baths': 0,
    'garage': 0,
    'owner': 'John Doe',
    'details':
        'Prime seafront land with unobstructed ocean views. Perfect for building a custom beachfront property.',
    'price': 8000000,
    'gallery': [
      'assets/images/land1_1.jpg',
      'assets/images/land1_2.jpg',
      'assets/images/land1_3.jpg'
    ],
  },
  {
    'title': 'Mountain View Plot',
    'address': '500 High Ridge Rd, Aspen',
    'image': 'assets/images/land2.jpg',
    'beds': 0,
    'baths': 0,
    'garage': 0,
    'owner': 'Jane Smith',
    'details':
        'Expansive plot of land with breathtaking mountain views. Ideal for a secluded luxury residence or vacation retreat.',
    'price': 5000000,
    'gallery': [
      'assets/images/land2_1.jpg',
      'assets/images/land2_2.jpg',
      'assets/images/land2_3.jpg'
    ],
  },
  {
    'title': 'Countryside Acreage',
    'address': '150 Rural Rd, Texas',
    'image': 'assets/images/land3.jpg',
    'beds': 0,
    'baths': 0,
    'garage': 0,
    'owner': 'Michael Anderson',
    'details':
        'Large parcel of land in the countryside, perfect for agriculture or building a family estate. Peaceful and scenic location.',
    'price': 2500000,
    'gallery': [
      'assets/images/land3_1.jpg',
      'assets/images/land3_2.jpg',
      'assets/images/land3_3.jpg'
    ],
  },
];

List pop = [
  {
    'title': 'Seafront Land',
    'address': '300 Beachfront Rd, Malibu',
    'image': 'assets/images/land1.jpg',
    'beds': 0,
    'baths': 0,
    'garage': 0,
    'owner': 'John Doe',
    'details':
        'Prime seafront land with unobstructed ocean views. Perfect for building a custom beachfront property.',
    'price': 8000000,
    'gallery': [
      'assets/images/land1_1.jpg',
      'assets/images/land1_2.jpg',
      'assets/images/land1_3.jpg'
    ],
  },
  {
    'title': 'Luxury Penthouse',
    'address': '321 Skyline Tower, Los Angeles',
    'image': 'assets/images/apartment3.jpg',
    'beds': 4,
    'baths': 3,
    'garage': 2,
    'owner': 'Isabella Clark',
    'details':
        'Luxury penthouse with breathtaking views of the skyline. 4 bedrooms, 3 bathrooms, and a 2-car garage. Ultimate luxury living.',
    'price': 7500000,
    'gallery': [
      'assets/images/apartment3_1.jpg',
      'assets/images/apartment3_2.jpg',
      'assets/images/apartment3_3.jpg'
    ],
  },
  {
    'title': 'Sunny Apartment',
    'address': '112 Beach Road, Miami',
    'image': 'assets/images/apartment1.jpg',
    'beds': 2,
    'baths': 1,
    'garage': 0,
    'owner': 'Ava Smith',
    'details':
        'Modern 2-bedroom apartment with a panoramic city view. Features 1 bathroom and no garage. Great for singles or couples.',
    'price': 3500000,
    'gallery': [
      'assets/images/apartment1_1.jpg',
      'assets/images/apartment1_2.jpg',
      'assets/images/apartment1_3.jpg'
    ],
  },
];

List wishlist = [];

Widget customWidget(data) {
  return ListView.builder(
    shrinkWrap: true,
    itemCount: data.length,
    itemBuilder: (context, index) {
      return InkWell(
        onTap: () {
          print('clicked');
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      HouseDetails_view(product: data[index])));
        },
        child: Column(
          children: [
            Container(
              height: 312,
              width: 400,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(14, 49, 70, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 212,
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            10), // Apply the same borderRadius here
                        child: Image.asset(
                          data[index]['image'],
                          fit: BoxFit.cover,
                        ),
                      )),

                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 5),
                    child: Text(data[index]['title'],
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                  //const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 5),
                    child: Text(data[index]['address'],
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.white)),
                  ),
                  const SizedBox(height: 5),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Icon(Icons.bed, color: Colors.amber, size: 20),
                        Text(
                          '${data[index]['beds']} Beds',
                          style: const TextStyle(color: Colors.white),
                        ),
                        const Icon(Icons.bathtub,
                            color: Colors.amber, size: 20),
                        Text(
                          '${data[index]['baths']} Baths',
                          style: const TextStyle(color: Colors.white),
                        ),
                        const Icon(Icons.car_rental_sharp,
                            color: Colors.amber, size: 20),
                        Text(
                          '${data[index]['garage']} Garage',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ])
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      );
    },
  );
}
