import 'package:flutter/cupertino.dart';

import 'BestSellerListViewItem.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true, // for customScrollView to take the size of all childern when we not using SliverFillRemaining
      physics: const NeverScrollableScrollPhysics(),// for customScrollView
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BestSellerListViewItem(),
        );
      },
    );
  }
}