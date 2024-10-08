import 'package:flutter/material.dart';
import '../components/info_column.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BookScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff155a7b),
        elevation: 0.5,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
           Navigator.pop(context);


          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff155a7b),  Color(0xff78bbdf)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      Container(
                        width: 220,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade100,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 8.0,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Container(
                          height: 250,
                          width: 190,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage('assets/book_cover.jfif'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            icon: Icon(Icons.library_add, color: Colors.white, size: 30),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.favorite_border, color: Colors.white, size: 30),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff155a7b),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.menu_book, color: Colors.white),
                                SizedBox(width: 5),
                                Text(
                                 AppLocalizations.of(context)!.readBook,
                                  style: TextStyle(color: Colors.white, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.rethink,
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.orange, size: 35),
                        Icon(Icons.star, color: Colors.orange, size: 35),
                        Icon(Icons.star, color: Colors.orange, size: 35),
                        Icon(Icons.star, color: Colors.orange, size: 35),
                        Icon(Icons.star_border, color: Colors.orange, size: 35),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  'by Steven Poole',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                SizedBox(height: 2),
                Text(
                  'The story of how old ideas that were mocked or ignored for centuries are now storming back to the cutting edge of science and technology, informing the way we lead our lives.',
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),
                SizedBox(height: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InfoColumn(icon: Icons.calendar_today, title: AppLocalizations.of(context)!.release, value: '11 / 6 / 2024'),
                    InfoColumn(icon: Icons.language, title: AppLocalizations.of(context)!.language, value: 'AR - EN'),
                    InfoColumn(icon: Icons.pages, title: AppLocalizations.of(context)!.pagenum, value: '450'),
                  ],
                ),
                SizedBox(height: 2),
                Center(
                  child: ElevatedButton(

                    onPressed: () {},
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Center(child: Text( AppLocalizations.of(context)!.downloadBook, style: TextStyle(fontSize: 20, color: Colors.white))),
                        ],
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                    //  padding: EdgeInsets.symmetric(horizontal:96 , vertical: 6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),

                      ),
                      backgroundColor:  Color(0xff155a7b),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
