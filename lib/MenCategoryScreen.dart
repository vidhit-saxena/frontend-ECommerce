import 'package:flutter/material.dart';

// class MenCategoryScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () {
//             // Add navigation logic here if needed
//           },
//         ),
//         title: const Text("Men"),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Banner Section
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Container(
//                 height: 200,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: Colors.blue[100],
//                 ),
//                 child: Stack(
//                   children: [
//                     const Positioned(
//                       top: 20,
//                       left: 20,
//                       child: Text(
//                         "Best Selling\nCasual Fits",
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       top: 120,
//                       left: 20,
//                       child: ElevatedButton(
//                         onPressed: () {
//                           // Add button logic here if needed
//                         },
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.black,
//                           shape: const RoundedRectangleBorder(
//                               // borderRadius: BorderRadius.circular(20),
//                               ),
//                         ),
//                         child: const Row(
//                           children: [
//                             Text(
//                               "Shop Now",
//                               style: TextStyle(color: Colors.white),
//                             ),
//                             Icon(
//                               Icons.arrow_right_alt,
//                               color: Colors.white,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       right: 10,
//                       bottom: 0,
//                       child: Image.asset(
//                         'https://via.placeholder.com/100', // Replace with your image URL
//                         height: 130,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),

//             // Dots Indicator
//             Center(
//               child: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: List.generate(
//                   4,
//                   (index) => Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 4.0),
//                     child: CircleAvatar(
//                       radius: 4,
//                       backgroundColor: index == 1 ? Colors.blue : Colors.grey,
//                     ),
//                   ),
//                 ),
//               ),
//             ),

//             // Top Category Section
//             const Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//               child: Text(
//                 "Top Category",
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: GridView.count(
//                 crossAxisCount: 4,
//                 shrinkWrap: true,
//                 physics: const NeverScrollableScrollPhysics(),
//                 children: [
//                   CategoryTile(
//                       title: "Festival Deals",
//                       imageUrl: 'https://via.placeholder.com/100'),
//                   CategoryTile(
//                       title: "Shirts",
//                       imageUrl: 'https://via.placeholder.com/100'),
//                   CategoryTile(
//                       title: "T-Shirts",
//                       imageUrl: 'https://via.placeholder.com/100'),
//                   CategoryTile(
//                       title: "Kurtas",
//                       imageUrl: 'https://via.placeholder.com/100'),
//                   CategoryTile(
//                       title: "Track Pants",
//                       imageUrl: 'https://via.placeholder.com/100'),
//                   CategoryTile(
//                       title: "Jeans",
//                       imageUrl: 'https://via.placeholder.com/100'),
//                   CategoryTile(
//                       title: "Trousers",
//                       imageUrl: 'https://via.placeholder.com/100'),
//                   CategoryTile(
//                       title: "Sweatshirts",
//                       imageUrl: 'https://via.placeholder.com/100'),
//                 ],
//               ),
//             ),

//             // Top Picks in Men Fashion Section
//             const SizedBox(
//               height: 20,
//             ),
//             Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 0.0, vertical: 8.0),
//               child: Container(
//                 color:
//                     Colors.blue[700], // Set your desired background color here
//                 padding: const EdgeInsets.symmetric(vertical: 10.0),
//                 child: const Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(Icons.arrow_back_outlined,
//                         size: 24, color: Colors.white), // Left arrow
//                     SizedBox(width: 8), // Space between arrow and text
//                     Text(
//                       "Top Picks In Men Fashion",
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                         color:
//                             Colors.white, // Set text color to match your theme
//                       ),
//                     ),
//                     SizedBox(width: 8), // Space between text and arrow
//                     Icon(Icons.arrow_forward_outlined,
//                         size: 24, color: Colors.white), // Right arrow
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10.0),
//               child: GridView.count(
//                 crossAxisCount: 3,
//                 shrinkWrap: true,
//                 physics: const NeverScrollableScrollPhysics(),
//                 childAspectRatio: 0.80, // Adjusts the aspect ratio of each tile
//                 children: [
//                   TopPickCategoryTile(
//                       title: "Shirts",
//                       imageUrl: 'https://via.placeholder.com/100'),
//                   TopPickCategoryTile(
//                       title: "T-Shirts",
//                       imageUrl: 'https://via.placeholder.com/100'),
//                   TopPickCategoryTile(
//                       title: "Kurtas",
//                       imageUrl: 'https://via.placeholder.com/100'),
//                   TopPickCategoryTile(
//                       title: "Track Pants",
//                       imageUrl: 'https://via.placeholder.com/100'),
//                   TopPickCategoryTile(
//                       title: "Jeans",
//                       imageUrl: 'https://via.placeholder.com/100'),
//                   TopPickCategoryTile(
//                       title: "Trousers",
//                       imageUrl: 'https://via.placeholder.com/100'),
//                   TopPickCategoryTile(
//                       title: "Sweatshirts",
//                       imageUrl: 'https://via.placeholder.com/100'),
//                   TopPickCategoryTile(
//                       title: "Nehru Jackets",
//                       imageUrl: 'https://via.placeholder.com/100'),
//                   TopPickCategoryTile(
//                       title: "Dhotis & Lungis",
//                       imageUrl: 'https://via.placeholder.com/100'),
//                 ],
//               ),
//             ),

//             const SizedBox(
//               height: 10,
//             ),
//             // Flash Sales Alert Section
//             FlashSalesAlert(),

//             //Festival Offers Section
//             FestivalOffers(
//               offers: const [
//                 {
//                   'imageUrl': 'assets/images/festivaloffersimg1.png',
//                   'title': 'Kurta Sets',
//                   'discount': 'MIN 60% OFF',
//                 },
//                 {
//                   'imageUrl': 'assets/images/festivaloffersimg2.png',
//                   'title': 'Nehru Jackets',
//                   'discount': 'MIN 70% OFF',
//                 },
//               ],
//             ),

//             DealOfTheDayScreen(
//               products: const [
//                 {
//                   'imageUrl': 'assets/images/shirt1.png',
//                   'title': "Men's Slim-Fit Cotton Pique Polo Shirt",
//                   'price': 'RS. 699',
//                   'rating': '4.5',
//                 },
//                 {
//                   'imageUrl': 'assets/images/shirt2.png',
//                   'title': "Men's Slim-Fit Cotton Pique Polo Shirt",
//                   'price': 'RS. 699',
//                   'rating': '4.5',
//                 },
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class MenCategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("Men"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue[100],
                ),
                child: Stack(
                  children: [
                    const Positioned(
                      top: 20,
                      left: 20,
                      child: Text(
                        "Best Selling\nCasual Fits",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 120,
                      left: 20,
                      child: ElevatedButton(
                        onPressed: () {
                          // Add button logic here if needed
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        child: const Row(
                          children: [
                            Text(
                              "Shop Now",
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_right_alt,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 10,
                      bottom: 0,
                      child: Image.asset(
                        'https://via.placeholder.com/100', // Replace with your image URL
                        height: 130,
                        errorBuilder: (context, error, stackTrace) {
                          return Icon(Icons.image,
                              size: 100, color: Colors.grey);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Dots Indicator
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                  4,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: CircleAvatar(
                      radius: 4,
                      backgroundColor: index == 1 ? Colors.blue : Colors.grey,
                    ),
                  ),
                ),
              ),
            ),

            // Top Category Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                "Top Category",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.count(
                crossAxisCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  CategoryTile(
                      title: "Festival Deals",
                      imageUrl: 'assets/images/festivedealstc.png'),
                  CategoryTile(
                      title: "Shirts",
                      imageUrl: 'assets/images/shirtstc.png'),
                  CategoryTile(
                      title: "T-Shirts",
                      imageUrl: 'assets/images/tshirtstc.png'),
                  CategoryTile(
                      title: "Kurtas",
                      imageUrl: 'assets/images/kurtastc.png'),
                  CategoryTile(
                      title: "Track Pants",
                      imageUrl: 'assets/images/trackpantstc.png'),
                  CategoryTile(
                      title: "Jeans",
                      imageUrl: 'assets/images/jeanstc.png'),
                  CategoryTile(
                      title: "Trousers",
                      imageUrl: 'assets/images/trouserstc.png'),
                  CategoryTile(
                      title: "Sweatshirts",
                      imageUrl: 'assets/images/sweatshirtstc.png'),
                ],
              ),
            ),

            // Top Picks in Men Fashion Section
            const SizedBox(height: 20),
            Container(
              color: Colors.blue[700],
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: const Center(
                child: Text(
                  "Top Picks In Men Fashion",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                childAspectRatio: 0.80,
                children: [
                  TopPickCategoryTile(
                      title: "Shirts",
                      imageUrl: 'assets/images/shirtsmf.png'),
                  TopPickCategoryTile(
                      title: "T-Shirts",
                      imageUrl: 'assets/images/tshirtmf.png'),
                  TopPickCategoryTile(
                      title: "Kurtas",
                      imageUrl: 'assets/images/kurtasmf.png'),
                  TopPickCategoryTile(
                      title: "Track Pants",
                      imageUrl: 'assets/images/trackpantsmf.png'),
                  TopPickCategoryTile(
                      title: "Jeans",
                      imageUrl: 'assets/images/jeansmf.png'),
                  TopPickCategoryTile(
                      title: "Trousers",
                      imageUrl: 'assets/images/trousersmf.png'),
                  TopPickCategoryTile(
                      title: "Sweatshirts",
                      imageUrl: 'assets/images/sweatshirtsmf.png'),
                  TopPickCategoryTile(
                      title: "Nehru Jackets",
                      imageUrl: 'assets/images/nehrujacketsmf.png'),
                  TopPickCategoryTile(
                      title: "Dhotis & Lungis",
                      imageUrl: 'assets/images/dhotismf.png'),
                ],
              ),
            ),

            const SizedBox(height: 10),
            // Flash Sales Alert Section
            FlashSalesAlert(),

            // Festival Offers Section
            FestivalOffers(
              offers: const [
                {
                  'imageUrl': 'assets/images/kurtasets.png',
                  'title': 'Kurta Sets',
                  'discount': 'MIN 60% OFF',
                },
                {
                  'imageUrl': 'assets/images/nehrujackets.png',
                  'title': 'Nehru Jackets',
                  'discount': 'MIN 70% OFF',
                },
              ],
            ),

            // Deal of the Day Section
            // DealOfTheDayScreen(
            //   products: const [
            //     {
            //       'imageUrl': 'https://via.placeholder.com/100',
            //       'title': "Men's Slim-Fit Cotton Pique Polo Shirt",
            //       'price': 'RS. 699',
            //       'rating': '4.5',
            //     },
            //     {
            //       'imageUrl': 'https://via.placeholder.com/100',
            //       'title': "Men's Slim-Fit Cotton Pique Polo Shirt",
            //       'price': 'RS. 699',
            //       'rating': '4.5',
            //     },
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final String title;
  final String imageUrl;

  CategoryTile({required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.blue, width: 1),
          ),
          child: ClipOval(
            child: Image.asset(
              imageUrl,
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class TopPickCategoryTile extends StatelessWidget {
  final String title;
  final String imageUrl;

  TopPickCategoryTile({required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            border: Border.all(color: Colors.blue, width: 2),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(0),
            child: Image.asset(
              imageUrl,
              height: 120,
              width: 110,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis, // Truncates text if too long
        ),
      ],
    );
  }
}

class OfferTile extends StatelessWidget {
  final String imageUrl;
  final String label;
  final String discount;

  const OfferTile({
    Key? key,
    required this.imageUrl,
    required this.label,
    required this.discount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.blue,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              discount,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FlashSalesAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Flash Sales Alert Header with Countdown Timer
          Container(
            color: const Color(0xFF5977DA),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 85),
            child: const Column(
              children: [
                Text(
                  "Flash Sales Alert",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "Offer Ends In : 22m 22s",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),

          // Festival Tiles Row
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: FestivalTile(
                    imageUrl: "assets/images/flashsaleimg1.png",
                    label: "Festival",
                    discount: "Min 30% Off",
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: FestivalTile(
                    imageUrl: "assets/images/flashsaleimg2.png",
                    label: "Deal Of The Day",
                    discount: "Min 30% Off",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FestivalTile extends StatelessWidget {
  final String imageUrl;
  final String label;
  final String discount;

  FestivalTile({
    required this.imageUrl,
    required this.label,
    required this.discount,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 5, // Adjusts height based on width for responsive tiles
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300, width: 1.2),
        ),
        child: Stack(
          children: [
            // Image covering the full tile
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
                // height: double.infinity,
              ),
            ),
            // Semi-transparent overlay for label and discount
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
                decoration: BoxDecoration(
                  color: Colors.black
                      .withOpacity(0.6), // Semi-transparent background
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(10),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      label,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      discount,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FestivalOffers extends StatelessWidget {
  final List<Map<String, String>> offers;

  FestivalOffers({required this.offers});

  Widget _buildCategoryCard({
    required String imageUrl,
    required String title,
    required String discount,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade800, width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              discount,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.pink,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "Festival Offers",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height*0.6,
          child: GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              childAspectRatio: 0.68, // Adjusts for tile's height and width
            ),
            itemCount: offers.length,
            itemBuilder: (context, index) {
              final offer = offers[index];
              return _buildCategoryCard(
                imageUrl: offer['imageUrl']!,
                title: offer['title']!,
                discount: offer['discount']!,
              );
            },
          ),
        ),
      ],
    );
  }
}

class DealOfTheDayScreen extends StatelessWidget {
  final List<Map<String, String>> products;

  DealOfTheDayScreen({required this.products});

  Widget _buildDealBanner() {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: const DecorationImage(
          image: AssetImage("assets/images/dealoftheday.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black.withOpacity(0.4),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              "Deal Of \n The Day",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Lorem Ipsum is \n simply dummy text",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "UP TO 60% OFF",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Explore Now",
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 18,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductCard({
    required String imageUrl,
    required String title,
    required String price,
    required String rating,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade800, width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imageUrl,
                  height: 180,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    children: [
                      Text(
                        rating,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 12,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                  icon: const Icon(Icons.favorite_border),
                  onPressed: () {},
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 4),
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4))),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Shop Now",
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.arrow_forward_outlined,
                          color: Colors.white,
                        )
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: ListView(
      //   children: [
      //     // "Deals of the Day" text
      //     const Padding(
      //       padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      //       child: Text(
      //         "Deals of the Day",
      //         style: TextStyle(
      //           fontSize: 24,
      //           fontWeight: FontWeight.bold,
      //           color: Colors.black87,
      //         ),
      //       ),
      //     ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: Text(
                "Deals of the Day",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            _buildDealBanner(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.55,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return _buildProductCard(
                    imageUrl: product['imageUrl']!,
                    title: product['title']!,
                    price: product['price']!,
                    rating: product['rating']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

