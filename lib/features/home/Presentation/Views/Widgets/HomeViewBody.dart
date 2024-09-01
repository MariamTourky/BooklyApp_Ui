import 'package:bookly_mvvm/constants.dart';
import 'package:bookly_mvvm/core/utils/Styles.dart';
import 'package:bookly_mvvm/features/home/Presentation/Views/Widgets/CustomHomViewAppbar.dart';
import 'package:flutter/cupertino.dart';

import 'BestSellerListView.dart';
import 'FeaturedListView.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      // if you have two list view scrobable and you want the second one to take the whole page when it scroll
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              CustomHomViewAppbar(),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: FeaturedListView(),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20, left: 30, right: 260),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Best Seller",
                    style:
                        Styles.textStyle18.copyWith(fontFamily: kGtSectraFine),
                  ),
                ),
              ),
              BestSellerListView(),
            ],
          ),
        ),
        SliverFillRemaining(
          // it's like expanded that makes its child take yhe whole page
          // without making the listView.builder build the whole list at once
          child: BestSellerListView(),
        )
      ],
    );
  }
}
