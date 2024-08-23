import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/item_tile.dart';
import 'package:flutter_application_3/models/item.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.all(12.0),
          margin: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search',
                style: TextStyle(fontSize: 16, color: Colors.grey[500]),
              ),
              const Icon(Icons.search),
            ],
          ),
        ),
        //message
        Container(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Text(
            'everyone flies.. some fly longer than others',
            style: TextStyle(color: Colors.grey[700]),
          ),
        ),

        //another massedge

        Container(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hot Picks 🔥',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'See all',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),

        Expanded(
          child: ListView.builder(
            itemCount: 11,
            scrollDirection: Axis.horizontal,
            //creat

            itemBuilder: (context, index) {
              Item item = Item(
                  name: "sotiri",
                  price: "500\$",
                  imagePath: 'lib/images_mashro3/sotiriiiii.jpg',
                  description: 'very handsome');

              return ItemTile(
                item: item,
              );
            },
          ),
        ),
      ],
    );
  }
}
