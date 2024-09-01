import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/Styles.dart';
import 'BookRating.dart';
import 'BooksAction.dart';
import 'CustomBookDetailsAppbar.dart';
import 'CustomBookImage.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        SizedBox(
            height: size.height*0.3,
            width: size.width*0.39,
            child: Container(color:Colors.red,child: const CustomBookImage())),
        const SizedBox(
          height: 43,
        ),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        BookRating(mainAxisAlignment: MainAxisAlignment.center,),
        const SizedBox(
          height: 24,
        ),
        BooksAction(),
      ],
    );
  }
}
