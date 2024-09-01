import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/Styles.dart';
import 'SimilarBooksListView.dart';

class BooksSimilarSection extends StatelessWidget {
  const BooksSimilarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}
