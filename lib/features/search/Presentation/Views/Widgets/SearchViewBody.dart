import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/Styles.dart';
import 'CustomSearchTextField.dart';
import 'SearchResultListView.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
   return  Padding(
     padding: const EdgeInsets.symmetric(horizontal: 30),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: const [
         CustomSearchTextField(),
         SizedBox(
           height: 16,
         ),
         Text(
           'Search Result',
           style: Styles.textStyle18,
         ),
         SizedBox(
           height: 16,
         ),
         Expanded(
           child: SearchResultListView(),
         ),
       ],
     ),
   );


  }
}
