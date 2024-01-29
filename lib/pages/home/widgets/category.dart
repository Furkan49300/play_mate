import 'package:flutter/material.dart';
import 'package:play_mate/pages/home/widgets/popular.dart';

class CategorySection extends StatelessWidget {
   CategorySection({super.key});

  final categories= [
    {
      'icon': Icons.sports_soccer,
      'color': Color(0xff605cf4),
      'title':'Foot'
    },
    {
      'icon': Icons.sports_basketball,
      'color': Color(0xfffc77a6),
      'title':'Basket'
    },
    {
      'icon': Icons.directions_bike,
      'color': Color(0xff298f42),
      'title':'Cyclisme'
    },
    {
      'icon': Icons.sports_volleyball,
      'color': Color(0xffdc9333),
      'title':'Volley'
    },
    {
      'icon': Icons.sports_volleyball,
      'color': Color(0xfff135ed),
      'title':'Volley'
    },
    {
      'icon': Icons.sports_volleyball,
      'color': Color(0xff54eafd),
      'title':'Volley'
    },
    {
      'icon': Icons.sports_volleyball,
      'color': Color(0xff94f35e),
      'title':'Volley'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height:550,
      decoration: const BoxDecoration(
          color: Color(0xfff6f8ff),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20)
        )
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height:140,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 25),
              scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) => Column(
                  children: [
                    const SizedBox(height:25),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:categories[index]['color'] as Color),
                        child: Icon(
          categories[index]['icon'] as IconData,
                          color: Colors.white,
                          size:40
                        ),
                      ),
                    const SizedBox(height:10),
                    Text(categories[index]['title'] as String,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ))
                  ],
                )),
                separatorBuilder: ((context, index) => SizedBox(width:33)),
                itemCount: categories.length)
      ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text("Annonces populaires",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold)
              )
          ),
          PopularSection(),


        ],
      ),
              );
  }
}
