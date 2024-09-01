import 'package:flutter/material.dart';
import 'package:bookly_mvvm/features/home/Presentation/Views/Widgets/CustomBookImage.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10, // Adjust this number based on your data
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // GoRouter.of(context).push(
              //   AppRouter.kBookDetailsView,
              //   extra: books[index],
              // );
            },
            child: CustomBookImage(),
          );
        },
      ),
    );
  }
}
