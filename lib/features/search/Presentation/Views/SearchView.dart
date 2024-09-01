import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/Styles.dart';
import 'Widgets/CustomSearchTextField.dart';
import 'Widgets/SearchViewBody.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SafeArea(
        child: SearchViewBody(),
      ),
    );
  }
}
