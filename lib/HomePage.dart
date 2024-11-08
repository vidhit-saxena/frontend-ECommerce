import 'package:flutter/material.dart';
import 'dart:async';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                CircleAvatar(
                  radius: 30, // Increased the size of the logo
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'LOGO',
                      style:
                          TextStyle(fontSize: 14), // Adjusted text size to fit
                    ),
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "|",
                  style: TextStyle(
                      color: Colors.blue, fontSize: 20), // Reduced font size
                ),
                SizedBox(width: 6),
                Icon(Icons.location_on, color: Colors.blue),
                Text(
                  "Your Location",
                  style: TextStyle(
                      color: Colors.blue, fontSize: 12), // Reduced font size
                ),
                Icon(Icons.arrow_drop_down, color: Colors.blue),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(
                      6.0), // Optional: to add some spacing
                  child: CircleAvatar(
                    radius: 18, // Adjust the radius as needed
                    backgroundColor:
                        Colors.blue, // Background color for the CircleAvatar
                    child: IconButton(
                      icon: const Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(
                      6.0), // Optional: to add some spacing
                  child: CircleAvatar(
                    radius: 18, // Adjust the radius as needed
                    backgroundColor:
                        Colors.blue, // Background color for the CircleAvatar
                    child: IconButton(
                      icon: const Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                Stack(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.shopping_cart_checkout_outlined,
                        color: Colors.blue,
                      ),
                      onPressed: () {},
                    ),
                    const Positioned(
                      right: 6,
                      top: 6,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.red,
                        child: Text(
                          '2',
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search, color: Colors.grey),
                    hintText: "Search here",
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.mic, color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Horizontal Scrollable Categories
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryItem(
                      title: 'Men',
                      imageUrl:
                          'assets/images/men.png', // Correct path to the asset image
                    ),
                    CategoryItem(
                      title: 'Women',
                      imageUrl:
                          'assets/images/women.png', // Correct path to the asset image
                    ),
                    CategoryItem(
                      title: 'Kids',
                      imageUrl:
                          'assets/images/kid.png', // Correct path to the asset image
                    ),
                    CategoryItem(
                      title: 'Home',
                      imageUrl:
                          'assets/images/house.png', // Correct path to the asset image
                    ),
                  ],
                ),
              ),
              // Expanded(
              //   child: CategoryGrid(),
              // ),

              CategoryGrid(),
              const SizedBox(
                height: 20,
              ),
              // Banner Section
              BannerSection(),
              const SizedBox(
                height: 20,
              ),
              const CategoryBanner(),
              const SizedBox(
                height: 20,
              ),
              // CategoryGridWidget()
              // FestivalSaleBanner()
              // Add other widgets here for the rest of the home page
            ],
          ),
        ),
      ),
    );
  }
}

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             const Row(
//               children: [
//                 CircleAvatar(
//                   radius: 30,
//                   child: Padding(
//                     padding: EdgeInsets.all(8.0),
//                     child: Text(
//                       'LOGO',
//                       style: TextStyle(fontSize: 14),
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 6),
//                 Text("|", style: TextStyle(color: Colors.blue, fontSize: 20)),
//                 SizedBox(width: 6),
//                 Icon(Icons.location_on, color: Colors.blue),
//                 Text(
//                   "Your Location",
//                   style: TextStyle(color: Colors.blue, fontSize: 12),
//                 ),
//                 Icon(Icons.arrow_drop_down, color: Colors.blue),
//               ],
//             ),
//             Row(
//               children: [
//                 CircleAvatar(
//                   radius: 18,
//                   backgroundColor: Colors.blue,
//                   child: IconButton(
//                     icon: const Icon(Icons.favorite_border_outlined,
//                         color: Colors.white, size: 20),
//                     onPressed: () {},
//                   ),
//                 ),
//                 const SizedBox(width: 6),
//                 CircleAvatar(
//                   radius: 18,
//                   backgroundColor: Colors.blue,
//                   child: IconButton(
//                     icon: const Icon(Icons.camera_alt_outlined,
//                         color: Colors.white, size: 20),
//                     onPressed: () {},
//                   ),
//                 ),
//                 Stack(
//                   children: [
//                     IconButton(
//                       icon: const Icon(Icons.shopping_cart_checkout_outlined,
//                           color: Colors.blue),
//                       onPressed: () {},
//                     ),
//                     const Positioned(
//                       right: 6,
//                       top: 6,
//                       child: CircleAvatar(
//                         radius: 8,
//                         backgroundColor: Colors.red,
//                         child: Text('2',
//                             style:
//                                 TextStyle(fontSize: 10, color: Colors.white)),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 decoration: BoxDecoration(
//                   color: Colors.grey[200],
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 child: const TextField(
//                   decoration: InputDecoration(
//                     icon: Icon(Icons.search, color: Colors.grey),
//                     hintText: "Search here",
//                     border: InputBorder.none,
//                     suffixIcon: Icon(Icons.mic, color: Colors.grey),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               const SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     CategoryItem(
//                         title: 'Men', imageUrl: 'assets/images/men.png'),
//                     CategoryItem(
//                         title: 'Women', imageUrl: 'assets/images/women.png'),
//                     CategoryItem(
//                         title: 'Kids', imageUrl: 'assets/images/kid.png'),
//                     CategoryItem(
//                         title: 'Home', imageUrl: 'assets/images/house.png'),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Container(
//                 child: CategoryGrid(),
//               ),
//               const SizedBox(height: 20),
//               Container(
//                 child: BannerSection(),
//               ),
//               const SizedBox(height: 20),
//               Container(
//                 child: const CategoryBanner(),
//               ),
//               const SizedBox(height: 20),
//               Container(
//                   // child: CategoryGridWidget(),
//                   ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// CategoryItem Widget
class CategoryItem extends StatelessWidget {
  final String title;
  final String imageUrl;

  const CategoryItem({required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imageUrl,
            width: 42, // Adjusted width
            height: 44, // Adjusted height for better fit
            // fit: BoxFit.cover,
          ),
          const SizedBox(width: 6), // Spacing between image and text
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class CategoryGrid extends StatelessWidget {
  final List<Map<String, String>> categories = [
    {"title": "Flash Sale", "imageUrl": "assets/images/flashsale.png"},
    {"title": "New at Website", "imageUrl": "assets/images/newat.png"},
    {"title": "Footwear", "imageUrl": "assets/images/womenfootwear.png"},
    {"title": "Clothing", "imageUrl": "assets/images/clothing.png"},
    {"title": "Appliances", "imageUrl": "assets/images/appliances.png"},
    {"title": "Toys", "imageUrl": "assets/images/toys.png"},
    {"title": "Accessories", "imageUrl": "assets/images/accessories.png"},
    {"title": "More", "imageUrl": "assets/images/more.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 250, // Set a fixed height for the grid
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, // Four items in each row
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.67,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryGridItem(
              title: categories[index]["title"]!,
              imageUrl: categories[index]["imageUrl"]!,
            );
          },
        ),
      ),
    );
  }
}

class CategoryGridItem extends StatelessWidget {
  final String title;
  final String imageUrl;

  const CategoryGridItem({required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [Colors.blueAccent, Colors.lightBlueAccent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.transparent,
            child: Image.asset(
              imageUrl,
              width: 60,
              height: 60,
              fit: BoxFit.contain,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class BannerSection extends StatefulWidget {
  @override
  _BannerSectionState createState() => _BannerSectionState();
}

class _BannerSectionState extends State<BannerSection> {
  final List<String> bannerImages = [
    'assets/images/banner1.png',
    'assets/images/banner2.jpg',
    'assets/images/banner3.jpg',
    'assets/images/banner4.jpg',
    'assets/images/banner5.jpg',
  ];

  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    // Listen for user manual swipe changes only
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onBannerTap(int index) {
    // Define your desired action on tap here.
    print('Banner at index $index tapped');
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Banner Tapped'),
          content: Text('You tapped on banner #$index'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Use LayoutBuilder to make the banner width dynamic
        LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              height: 200, // Adjust the height as needed
              width: constraints.maxWidth, // Full width
              child: PageView.builder(
                controller: _pageController,
                itemCount: bannerImages.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => _onBannerTap(index),
                    child: BannerItem(
                      imageUrl: bannerImages[index],
                      width: constraints.maxWidth,
                    ),
                  );
                },
              ),
            );
          },
        ),
        const SizedBox(height: 10),
        // Updated indicator to use rounded rectangles
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(bannerImages.length, (index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: _currentPage == index ? 16 : 12,
              height: 8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: _currentPage == index ? Colors.blue : Colors.grey,
              ),
            );
          }),
        ),
      ],
    );
  }
}

class BannerItem extends StatelessWidget {
  final String imageUrl;
  final double width;

  const BannerItem({required this.imageUrl, required this.width});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10), // Rounded corners
        child: Image.asset(
          imageUrl,
          width: width,
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class FestivalSaleBanner extends StatelessWidget {
  const FestivalSaleBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.blue[50], // Light blue background color
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          // Top Banner
          Container(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            color: Colors.blue,
            child: const Text(
              'FESTIVAL SALE IS LIVE NOW | UP TO 75% OFF',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          const SizedBox(height: 16.0),

          // Main Content with Stack
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              // Main Content Row
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color:
                      Colors.blue[100], // Slightly lighter blue for main area
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text Section
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Festival Sales Available',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          const Text(
                            'Discount Upto',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black54,
                            ),
                          ),
                          const Text(
                            '75% off',
                            style: TextStyle(
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 6.0,
                              horizontal: 12.0,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: const Text(
                              'ONLY ON',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 4.0),
                          const Text(
                            'Website',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Placeholder Image Section
                    Image.asset(
                      'assets/model.png', // Replace with your local image path
                      width: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),

              // Overlapping Bottom Banner
              Positioned(
                bottom: -24, // Adjust this to control the overlap
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16.0),
                  width: MediaQuery.of(context).size.width -
                      64, // Adjust to fit within padding
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Text(
                    'Enlight Your Festivals With Upto 75% Off On Our Product',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 32.0), // Extra space for overlap
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String imageUrl;
  final String category;
  final String discount;

  const CategoryCard({
    Key? key,
    required this.imageUrl,
    required this.category,
    required this.discount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 300,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              color: Colors.pink.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                children: [
                  Text(
                    category,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    discount,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryBanner extends StatelessWidget {
  const CategoryBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CategoryCard(
          imageUrl:
              'assets/images/womenCategory.png', // Replace with your image URL
          category: 'Clothing',
          discount: 'Min 30% Off',
        ),
        CategoryCard(
          imageUrl:
              'assets/images/applianceCategory.png', // Replace with your image URL
          category: 'Home',
          discount: 'Min 30% Off',
        ),
      ],
    );
  }
}

// class CategoryGridWidget extends StatefulWidget {
//   @override
//   _CategoryGridWidgetState createState() => _CategoryGridWidgetState();
// }

// class _CategoryGridWidgetState extends State<CategoryGridWidget> {
//   String selectedCategory = "Footwear";

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         // Category Selection Buttons
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               categoryButton("Footwear"),
//               categoryButton("Clothing"),
//               categoryButton("Watches"),
//               categoryButton("Accessories"),
//             ],
//           ),
//         ),
//         // Expanded widget wrapping GridView to avoid layout issues
//         Expanded(
//           child: GridView.count(
//             crossAxisCount: 2,
//             padding: const EdgeInsets.all(8.0),
//             crossAxisSpacing: 8.0,
//             mainAxisSpacing: 8.0,
//             children: [
//               categoryCard("Hills", "assets/hills.jpg", "MIN 60% OFF"),
//               categoryCard("Daily Use", "assets/daily_use.jpg", "MIN 70% OFF"),
//               categoryCard("Shoes", "assets/shoes.jpg", "MIN 60% OFF"),
//               categoryCard("Casual", "assets/casual.jpg", "MIN 70% OFF"),
//             ],
//           ),
//         ),
//       ],
//     );
//   }

//   // Function to build category button
//   Widget categoryButton(String categoryName) {
//     return OutlinedButton(
//       onPressed: () {
//         setState(() {
//           selectedCategory = categoryName;
//         });
//         // Add your onTap functionality here
//       },
//       style: OutlinedButton.styleFrom(
//         backgroundColor: selectedCategory == categoryName ? Colors.pink[50] : Colors.white,
//         side: const BorderSide(color: Colors.pinkAccent),
//       ),
//       child: Text(
//         categoryName,
//         style: TextStyle(
//           color: selectedCategory == categoryName ? Colors.pink : Colors.black,
//           fontWeight: selectedCategory == categoryName ? FontWeight.bold : FontWeight.normal,
//         ),
//       ),
//     );
//   }

//   // Function to build category card
//   Widget categoryCard(String title, String imagePath, String discount) {
//     return GestureDetector(
//       onTap: () {
//         // Add your onTap functionality here
//         print("Tapped on $title");
//       },
//       child: Container(
//         decoration: BoxDecoration(
//           border: Border.all(color: Colors.grey[300]!),
//           borderRadius: BorderRadius.circular(8.0),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               imagePath,
//               height: 100,
//               width: 100,
//               fit: BoxFit.cover,
//             ),
//             const SizedBox(height: 8.0),
//             Text(
//               title,
//               style: const TextStyle(fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 4.0),
//             Text(
//               discount,
//               style: const TextStyle(
//                 color: Colors.pink,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//Done
class CategoryWidgetWomen extends StatefulWidget {
  @override
  _CategoryWidgetWomenState createState() => _CategoryWidgetWomenState();
}

class _CategoryWidgetWomenState extends State<CategoryWidgetWomen> {
  String selectedCategory = "Footwear"; // Track the selected category

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title Text
          const Text(
            "Category In Women",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),

          // Category Buttons
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildCategoryButton("Footwear"),
                _buildCategoryButton("Clothing"),
                _buildCategoryButton("Watches"),
                _buildCategoryButton("Accessories"),
              ],
            ),
          ),
          const SizedBox(height: 16),

          // Category Items
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 0.75,
              children: [
                _buildCategoryCard(
                  imageUrl: "assets/images/heels.png",
                  title: "Hills",
                  discount: "MIN 60% OFF",
                ),
                _buildCategoryCard(
                  imageUrl: "assets/images/dailyuse.png",
                  title: "Daily Use",
                  discount: "MIN 70% OFF",
                ),
                _buildCategoryCard(
                  imageUrl: "assets/images/shoes.png",
                  title: "Shoes",
                  discount: "MIN 60% OFF",
                ),
                _buildCategoryCard(
                  imageUrl: "assets/images/casual.png",
                  title: "Casual",
                  discount: "MIN 70% OFF",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Method to build category button
  Widget _buildCategoryButton(String title) {
    final isSelected = selectedCategory == title;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: OutlinedButton(
        onPressed: () {
          setState(() {
            selectedCategory = title; // Update selected category
          });
        },
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: isSelected ? Colors.pink : Colors.grey,
          ),
          backgroundColor: isSelected ? Colors.pink.shade50 : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.pink : Colors.black,
          ),
        ),
      ),
    );
  }

  // Method to build category card
  Widget _buildCategoryCard({
    required String imageUrl,
    required String title,
    required String discount,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade600),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0), // Padding around the entire card
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Padding(
                  padding: const EdgeInsets.all(8.0), // Padding around image
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 4.0), // Padding around title and discount
              child: Column(
                children: [
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
                      fontSize: 14,
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenClothingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // padding: const EdgeInsets.all(16),
        padding: const EdgeInsets.only(top: 36),
        color: Colors.white, // Set a base color for the background
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top section with main image and text
            Container(
              decoration: const BoxDecoration(
                gradient: RadialGradient(
                  colors: [Colors.lightBlueAccent, Colors.blueAccent],
                  center: Alignment.centerLeft,
                  radius: 1.0,
                ),
                // borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              // padding: const EdgeInsets.all(16),
              child: Stack(
                children: [
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  const Positioned(
                    top: 20,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          'Men\nClothing',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Lorem Ipsum is\nsimply dummy text',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'UP TO 60% OFF',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    bottom: 20,
                    child: Image.asset(
                      'assets/images/outermen.png',
                      // height: 283.24,
                      height: 100,
                      width: 210,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 0, // Adjusts horizontal positioning of the button
                    bottom:
                        40, // Adjusts vertical alignment with the "UP TO 60% OFF" text
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: const RoundedRectangleBorder(
                            // borderRadius: BorderRadius.circular(8),
                            ),
                      ),
                      onPressed: () {},
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Shop Now',
                              style: TextStyle(color: Colors.white)),
                          Icon(Icons.arrow_forward, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // const SizedBox(height: 24),

            // Bottom section with clothing categories
            Container(
              decoration: const BoxDecoration(
                gradient: RadialGradient(
                  colors: [Colors.lightBlueAccent, Colors.blueAccent],
                  center: Alignment.centerLeft,
                  radius: 1.0,
                ),
                // borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/innermen1.png', // Replace with the actual image path
                          height: 220,
                          // width: 170,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Casual Clothing',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Up to 50% Off',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/innermen2.png', // Replace with the actual image path
                          height: 220,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Formal Clothing',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Starting At Rs. 399',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class ToysBannerSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Banner Section
//           Container(
//             color: Colors.amber.shade100,
//             padding: const EdgeInsets.all(16),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text(
//                         "The best",
//                         style: TextStyle(
//                           fontSize: 16,
//                           color: Colors.orange,
//                         ),
//                       ),
//                       const Text(
//                         "Baby Toys",
//                         style: TextStyle(
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.orange,
//                         ),
//                       ),
//                       const SizedBox(height: 8),
//                       Text(
//                         "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
//                         style: TextStyle(
//                             fontSize: 14, color: Colors.grey.shade600),
//                       ),
//                       const SizedBox(height: 12),
//                       ElevatedButton(
//                         onPressed: () {},
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.orange,
//                         ),
//                         child: const Text(
//                           "Buy Now",
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(width: 16),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     Container(
//                       padding: const EdgeInsets.all(8),
//                       color: Colors.orange,
//                       child: const Column(
//                         children: [
//                           Text(
//                             "SPECIAL SALE",
//                             style: TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                           Text(
//                             "UP TO 50% OFF",
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 8),
//                     Image.network(
//                       'https://dummyimage.com/100x100/ffcc00/ffffff&text=Toy+Car', // Replace with the actual image URL
//                       height: 100,
//                       width: 100,
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),

//           // Discover The Best Offers Section
//           const SizedBox(height: 20),
//           const Padding(
//             padding: EdgeInsets.all(16.0),
//             child: Text(
//               "Discover The Best Offers",
//               style: TextStyle(
//                 fontSize: 22,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           Container(
//             height: 220,
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               itemCount: 5, // Change as needed
//               itemBuilder: (context, index) {
//                 return OfferCard(
//                   ageRange: "2 to 5 Years",
//                   price: "Under Rs. 499",
//                   discount: "UPTO 15% OFF",
//                   imageUrl:
//                       "https://dummyimage.com/150x150/cccccc/000000&text=Toy", // Replace with actual image URL
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class ToysBannerSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Banner Image Section with onTap functionality
          InkWell(
            onTap: () {
              // Action to perform when the banner image is tapped
              print("Banner image tapped!");
            },
            child: Image.asset(
              'assets/images/banneeeeeeeeeeer.png', // Replace with actual banner image URL
              fit: BoxFit.cover,
              // width: double.infinity,
              height: 200,
            ),
          ),

          // Discover The Best Offers Section with gradient background
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFFFFFFF),
                  Color(0xFFFFCC80)
                ], // Change to your preferred gradient colors
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Discover The Best Offers",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 250,
                  // width: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 16,),
                    itemCount: 5, // Change as needed
                    itemBuilder: (context, index) {
                      return OfferCard(
                        ageRange: "2 to 5 Years",
                        price: "Under Rs. 499",
                        discount: "UPTO 15% OFF",
                        imageUrl:
                            "https://dummyimage.com/150x150/cccccc/000000&text=Toy", // Replace with actual image URL
                      );
                    },
                  ),
                ),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OfferCard extends StatelessWidget {
  final String ageRange;
  final String price;
  final String discount;
  final String imageUrl;

  OfferCard({
    required this.ageRange,
    required this.price,
    required this.discount,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(right: 16, bottom: 5),
      decoration: BoxDecoration(
        color: Colors.amber.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.orange.shade600, width: 1.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product Image with padding
          Padding(
            padding: const EdgeInsets.all(8.0), // Padding around the image
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8), // Rounded corners for image
              child: Image.network(
                imageUrl,
                height: 130, // Adjust this height as needed
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Price label with background color
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.orange.shade700,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    price,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                // Age Range
                Text(
                  ageRange,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.start, // Centered alignment within the card
                ),
                const SizedBox(height: 4),
                // Discount Text
                Text(
                  discount,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.orange.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}



//Done
class RecommendedSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Recommended Best Offer',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Flexible(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio:
                  0.75, // Adjust to control the width-to-height ratio
              children: [
                buildOfferCard('Fashion Clothing', 'MIN 60% OFF',
                    'assets/images/fashion.png'),
                buildOfferCard('Home Appliances', 'MIN 70% OFF',
                    'assets/images/appliancesrbo.png'),
                buildOfferCard(
                    'Toys', 'MIN 60% OFF', 'assets/images/toysrbo.png'),
                buildOfferCard('Accessories', 'MIN 70% OFF',
                    'assets/images/accessoriesrbo.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildOfferCard(String title, String discount, String imagePath) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                color: Colors.lightGreenAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                      height: double
                          .infinity, // Allow image to fill available space
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              discount,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class RecommendedSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text(
//             'Recommended Best Offer',
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           const SizedBox(height: 16),
//           // Wrap GridView in a fixed-height Container to avoid overflow issues
//           Container(
//             height: 500, // Adjust the height as needed
//             child: GridView.count(
//               crossAxisCount: 2,
//               crossAxisSpacing: 16,
//               mainAxisSpacing: 16,
//               childAspectRatio: 0.8,
//               children: [
//                 buildOfferCard('Fashion Clothing', 'MIN 60% OFF',
//                     'assets/images/fashion.png'),
//                 buildOfferCard('Home Appliances', 'MIN 70% OFF',
//                     'assets/images/appliancesrbo.png'),
//                 buildOfferCard(
//                     'Toys', 'MIN 60% OFF', 'assets/images/toysrbo.png'),
//                 buildOfferCard('Accessories', 'MIN 70% OFF',
//                     'assets/images/accessoriesrbo.png'),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildOfferCard(String title, String discount, String imagePath) {
//     return Container(
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.black, width: 1), // Simple border
//         borderRadius: BorderRadius.circular(12),
//         color: Colors.white,
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0), // Adds padding inside the card
//         child: Column(
//           mainAxisSize: MainAxisSize
//               .min, // Allows column to take up only the necessary height
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               color: Colors.lightGreenAccent, // Background color for the image
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0), // Padding around the image
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(8),
//                   child: Image.asset(
//                     imagePath,
//                     // fit: BoxFit.cover,
//                     // width: double.infinity,
//                     height:
//                         150, // Increased height of the image for better visibility
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 10),
//             Text(
//               title,
//               style: const TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               discount,
//               style: const TextStyle(
//                 fontSize: 18,
//                 color: Colors.green,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//Done
class ToyCollectionScreen extends StatelessWidget {
  final List<Map<String, dynamic>> toys = [
    {
      'image': 'assets/images/TC1.png',
      'title': 'Toys Collection',
      'discount': 'MIN 60% OFF',
    },
    {
      'image': 'assets/images/TC2.png',
      'title': 'Toys Collection',
      'discount': 'MIN 70% OFF',
    },
    {
      'image': 'assets/images/TC3.png',
      'title': 'Toys Collection',
      'discount': 'MIN 60% OFF',
    },
    {
      'image': 'assets/images/TC4.png',
      'title': 'Toys Collection',
      'discount': 'MIN 70% OFF',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Toys Collection',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.7, // Adjust this to modify card aspect ratio
          ),
          itemCount: toys.length,
          itemBuilder: (context, index) {
            return ToyCard(
              image: toys[index]['image'],
              title: toys[index]['title'],
              discount: toys[index]['discount'],
            );
          },
        ),
      ),
    );
  }
}

class ToyCard extends StatelessWidget {
  final String image;
  final String title;
  final String discount;

  const ToyCard({
    Key? key,
    required this.image,
    required this.title,
    required this.discount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black, width: 1.2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                height: 160, // Adjust as needed for desired image height
                width: double.infinity,
              ),
            ),
          ),
          const Spacer(), // Pushes content down
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 6.0, vertical: 14.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  discount,
                  style: const TextStyle(
                    color: Colors.lightGreenAccent,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
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

//Done
class HomeAppliancesCollection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Home Appliances Collection",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 12.0,
                mainAxisSpacing: 12.0,
                childAspectRatio: 0.8,
                children: [
                  ApplianceCard(
                    imagePath: 'assets/images/air_fryer.png',
                    title: 'Appliances',
                    offer: '25% OFF',
                  ),
                  ApplianceCard(
                    imagePath: 'assets/images/blender.png',
                    title: 'Appliances',
                    offer: 'Up To 45% OFF',
                  ),
                  ApplianceCard(
                    imagePath: 'assets/images/coffee_maker.png',
                    title: 'Appliances',
                    offer: 'Below Rs. 599',
                  ),
                  ApplianceCard(
                    imagePath: 'assets/images/induction.png',
                    title: 'Appliances',
                    offer: 'Below Rs. 599',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ApplianceCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String offer;

  const ApplianceCard({
    required this.imagePath,
    required this.title,
    required this.offer,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ApplianceDetailPage(
              title: title,
              imagePath: imagePath,
              offer: offer,
            ),
          ),
        );
      },
      child: AspectRatio(
        aspectRatio: 3 / 4, // Adjust this value to control the height
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: 60,
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 15,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 12.0),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Text(
                      offer,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ApplianceDetailPage extends StatelessWidget {
  final String title;
  final String imagePath;
  final String offer;

  const ApplianceDetailPage({
    required this.title,
    required this.imagePath,
    required this.offer,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(imagePath,
              fit: BoxFit.cover, height: 300, width: double.infinity),
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            offer,
            style: const TextStyle(fontSize: 18, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}

//Done
class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 2; // Start with no item selected

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF2C2F48), // Example hex color for the background
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildNavItem(Icons.card_giftcard, 0),
          _buildNavItem(Icons.apps, 1),
          _buildHomeButton(),
          _buildNavItem(Icons.info_outline, 3),
          _buildNavItem(Icons.person_outline, 4),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    bool isSelected = _selectedIndex == index;

    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        padding: EdgeInsets.all(
            isSelected ? 12 : 8), // Increase padding for selected item
        margin: EdgeInsets.only(
            bottom: isSelected ? 10 : 0), // Raise the selected item
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue[600] : Colors.white,
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? Colors.white : Colors.blue[300]!,
            width: 2,
          ),
        ),
        child: Icon(
          icon,
          color: isSelected ? Colors.white : Colors.black,
          size: isSelected ? 32 : 28, // Increase icon size for selected item
        ),
      ),
    );
  }

  Widget _buildHomeButton() {
    bool isSelected = _selectedIndex == 2;

    return GestureDetector(
      onTap: () => _onItemTapped(2),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        padding: EdgeInsets.all(isSelected ? 14 : 10),
        margin: EdgeInsets.only(bottom: isSelected ? 10 : 0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Colors.blue[600] : Colors.white,
          border: Border.all(
            color: isSelected ? Colors.white : Colors.blue[300]!,
            width: 2,
          ),
        ),
        child: Icon(
          Icons.home,
          color: isSelected ? Colors.white : Colors.black,
          size: isSelected ? 34 : 30,
        ),
      ),
    );
  }
}

