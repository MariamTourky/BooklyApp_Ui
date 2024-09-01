import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/AppRouter.dart';
import 'CustomBookImage.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.16,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 20, // Adjust this number based on your data
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              GoRouter.of(context).push(
                AppRouter.bookDetailsViewRouter,
               // extra: books[index],
              );
            },
            child: CustomBookImage(),
          );
        },
      ),
    );
  }
}
