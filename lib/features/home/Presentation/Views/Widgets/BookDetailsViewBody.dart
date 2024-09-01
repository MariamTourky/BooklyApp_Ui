import 'package:bookly_mvvm/features/home/Presentation/Views/Widgets/BookDetailsSection.dart';
import 'package:bookly_mvvm/features/home/Presentation/Views/Widgets/BookRating.dart';
import 'package:bookly_mvvm/features/home/Presentation/Views/Widgets/BooksAction.dart';
import 'package:bookly_mvvm/features/home/Presentation/Views/Widgets/BooksSimilarSection.dart';
import 'package:bookly_mvvm/features/home/Presentation/Views/Widgets/CustomBookImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../../../../core/utils/Styles.dart';
import 'CustomBookDetailsAppbar.dart';
import 'SimilarBooksListView.dart';


class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  BookDetailsSection(),
                  Expanded(
                    child: const SizedBox(
                      height: 45,
                    ),
                  ),
                  BooksSimilarSection(),
                ],
              ),
            ),
        )
      ],
    );
  }
}