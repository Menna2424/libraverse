import 'package:flutter/material.dart';
import 'package:libravarse/core/utils/colors_manager.dart';
import 'package:libravarse/core/utils/routes_manager.dart';
import 'package:libravarse/core/utils/strings_manager.dart';
import 'package:libravarse/presentation/Category/category_screen.dart';
import 'package:libravarse/presentation/favourite/favourite_screen.dart';
import 'package:libravarse/presentation/my_library_screen/my_library_screen.dart';
import 'package:libravarse/presentation/profile_screen/profile_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'components/book_item.dart';
import 'components/page_title.dart';
import 'components/section_name.dart';
import 'models/book_data_object.dart';

class HomeScreen extends StatelessWidget {
  final _pageController1 = PageController(viewportFraction: 0.4);
  final _pageController2 = PageController(viewportFraction: 0.4);
  var searchController = TextEditingController();
  int currentPage = 3;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          PageTitle(),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextFormField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: StringsManager.searchHintText,
                filled: true,
                fillColor: Theme.of(context).colorScheme.secondary,
                hintStyle: Theme.of(context).textTheme.labelMedium,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                    borderSide: BorderSide.none),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 82.0),
                  child: Icon(
                    Icons.search,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SectionName(
                        text: StringsManager.categorySection,
                        route: RoutesManager.categoryRoute),
                    SizedBox(height: 30,),

                    SizedBox(
                      height: 200,
                      child: PageView.builder(
                        padEnds: false,
                        clipBehavior: Clip.none,
                        itemBuilder: (context, index) =>
                            BookItem(book: bookItems[index]),
                        itemCount: bookItems.length,
                        scrollDirection: Axis.horizontal,
                        controller: _pageController1,
                      ),
                    ),
                //    SizedBox(height: 15),
                    SmoothPageIndicator(
                      controller: _pageController1,
                      count: bookItems.length,
                      axisDirection: Axis.horizontal,
                      effect: WormEffect(
                        dotColor: Theme.of(context).colorScheme.secondary,
                        activeDotColor: Theme.of(context).colorScheme.primary,
                        dotHeight: 10,
                        dotWidth: 10,
                      ),
                    ),
                    SectionName(
                        text: StringsManager.myLibrarySection,
                        route: RoutesManager.myLibraryRoute),
                  SizedBox(height: 30,),
                    SizedBox(
                      height: 200,
                      child: PageView.builder(
                        padEnds: false,
                        clipBehavior: Clip.none,
                        itemBuilder: (context, index) =>
                            BookItem(book: bookItems[index]),
                        itemCount: bookItems.length,
                        scrollDirection: Axis.horizontal,
                        controller: _pageController2,
                      ),
                    ),
                    SectionName(
                        text: StringsManager.favouriteSection,
                        route: RoutesManager.favouriteRoute),
                    SizedBox(
                      height: 300,
                      child: GridView.builder(
                        gridDelegate:
                        SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemBuilder: (context, index) => Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BookItem(book: bookItems[index]),
                          ],
                        ),
                        itemCount: bookItems.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
