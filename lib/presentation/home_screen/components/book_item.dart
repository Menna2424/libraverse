import 'package:flutter/material.dart';
import 'package:libravarse/core/utils/routes_manager.dart';
import 'package:libravarse/core/utils/strings_manager.dart';

import '../../../core/utils/images_manager.dart';
import 'book_item.dart';

class BookItem extends StatelessWidget {
final bookData book ;


BookItem({required this.book});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.topLeft,

        clipBehavior: Clip.none,



        children: [
          Positioned(
              child: GestureDetector(
            onTap: () {
            Navigator.pushNamed(context, RoutesManager.bookDes);
            },
            child: Container(
              width: 110,
              height: 140,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).colorScheme.secondary,
                    Theme.of(context).colorScheme.primary                  ],
                  end: Alignment.bottomCenter,
                  begin: Alignment.topCenter,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),


              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(StringsManager.bookTitle,style: TextStyle(color: Colors.black,fontSize: 12)),
                  Text(StringsManager.bookAuthor,style: TextStyle(fontSize: 12)),
                  SizedBox(height: 5,),
                ],
              ),

            ),
          )),
          Positioned(
              top: -20,
              left: 5,
              child: GestureDetector(
                  onTap: () {
                 //   Navigator.push(context,
                      //  MaterialPageRoute(builder: (context) => FavPage()));
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    child: Image.asset(
                     book.imagepath,
                      width: 100,
                      height: 120,
                    ),
                  ))),
        ],
      ),
    );
  }
}
class bookData{

  String imagepath=ImagesManager.bookCover;

  bookData({required this.imagepath});

}