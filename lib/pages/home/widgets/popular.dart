import 'package:flutter/material.dart';
import 'package:play_mate/models/annonce.dart';

class PopularSection extends StatelessWidget {
   PopularSection({super.key});

  final List<Annonce> annonces=Annonce.annonces();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:200,
      child:ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
          scrollDirection: Axis.horizontal,
            itemBuilder: ((context,index) => GestureDetector(
              onTap: (()=>print('on tap')),
              child: Card(
                elevation:5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Container(
                    padding: EdgeInsets.all(5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                          child: Image.asset(annonces[index].bgImage)
                      ),
                  )
              ),
            )),
            separatorBuilder:((context,index) => const SizedBox(width:10)) ,
            itemCount: annonces.length)
    );
  }
}
