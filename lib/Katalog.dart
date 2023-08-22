// import 'package:flutter/material.dart';

// class Katalog extends StatefulWidget {
//   const Katalog({super.key});

//   @override
//   State<Katalog> createState() => _KatalogState();
// }

// class _KatalogState extends State<Katalog> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: Padding(
//           padding: const EdgeInsets.only(left: 24.0),
//           child: Icon(
//             Icons.location_on,
//             color: Colors.grey[700],
//           ),
//         ),
//         title: Text(
//           'Sydney, Australia',
//           style: TextStyle(
//             fontSize: 16,
//             color: Colors.grey[700],
//           ),
//         ),
//         centerTitle: false,
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 24.0),
//             child: Container(
//               padding: EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: Colors.grey[200],
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Icon(
//                 Icons.person,
//                 color: Colors.grey,
//               ),
//             ),
//           ),
//         ],
//       ),
      
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const SizedBox(height: 48),

//           // good morning bro
//           const Padding(
//             padding: EdgeInsets.symmetric(horizontal: 24.0),
//             child: Text('Good morning,'),
//           ),

//           const SizedBox(height: 4),

//           // Let's order fresh items for you
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 24.0),
//             child: Text(
//               "Let's order fresh items for you",
//               style: TextStyle(
//                 fontSize: 36,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),

//           const SizedBox(height: 24),

//           const Padding(
//             padding: EdgeInsets.symmetric(horizontal: 24.0),
//             child: Divider(),
//           ),

//           const SizedBox(height: 24),

//           // categories -> horizontal listview
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 24.0),
//             child: Text(
//               "Fresh Items",
//               style: TextStyle(
//                 //fontWeight: FontWeight.bold,
//                 fontSize: 18,
//               ),
//             ),
//           ),

//           // recent orders -> show last 3
//           // Expanded(
//           //   child: Consumer<CartModel>(
//           //     builder: (context, value, child) {
//           //       return GridView.builder(
//           //         padding: const EdgeInsets.all(12),
//           //         physics: const NeverScrollableScrollPhysics(),
//           //         itemCount: value.shopItems.length,
//           //         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           //           crossAxisCount: 2,
//           //           childAspectRatio: 1 / 1.2,
//           //         ),
//           //         itemBuilder: (context, index) {
//           //           return GroceryItemTile(
//           //             itemName: value.shopItems[index][0],
//           //             itemPrice: value.shopItems[index][1],
//           //             imagePath: value.shopItems[index][2],
//           //             color: value.shopItems[index][3],
//           //             onPressed: () =>
//           //                 Provider.of<CartModel>(context, listen: false)
//           //                     .addItemToCart(index),
//           //           );
//           //         },
//           //       );
//           //     },
//           //   ),
//           // ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class Katalog extends StatefulWidget {
  const Katalog({super.key});

  @override
  State<Katalog> createState() => _KatalogState();
}

class _KatalogState extends State<Katalog> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AADOREITY STORE"),
        backgroundColor: const Color.fromARGB(255, 100, 185, 255),
      ),

      body: Center(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(50.0),
              
              child: Image.asset('lib/foto/shirt1.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: const Text(
                'Butterfly Shirt',
                style: TextStyle(
                  fontSize: 34,
                ),
              ),
            ),
            Text(
              'Buy : $_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(80.0),
        child: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}