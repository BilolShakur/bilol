import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ImageScreen());
  }
}
//?     1  ⬇️

// class ListScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('List View')),
//       body: ListView.builder(
//         itemCount: 1000000,
//         itemBuilder: (context, i) {
//           return ItemWid(index: i);
//         },
//       ),
//     );
//   }
// }

// class ItemWid extends StatelessWidget {
//   final int index;

//   const ItemWid({Key? key, required this.index}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Builder(
//         builder: (context) {
//           return Text('Item $index');
//         },
//       ),
//     );
//   }
// }

//?            2 ⬇️
// class ComputationScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     int result = heavyComputation();
//     return Scaffold(
//       appBar: AppBar(title: Text('Heavy Computation')),
//       body: Center(child: Text('Result: $result')),
//     );
//   }

//   int heavyComputation() {
//     // int sum = 0;
//     // for (int i = 0; i < 100000000; i++) {
//     //   sum += i;
//     // }
//     // return sum;

//     return (100000000 * (100000000 - 1)) ~/ 2;
//   }
// }

//?          3⬇️

class ImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image Loading')),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 100,
        itemBuilder: (context, index) {
          return Image.network(
            loadingBuilder: (context, child, loadingProgress) {
              return Icon(Icons.circle);
            },
            'https://cdn1.ozone.ru/s3/multimedia-1-5/c600/6998379593.jpg',
          );
        },
      ),
    );
  }
}
