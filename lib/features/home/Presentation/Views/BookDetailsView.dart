import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Widgets/BookDetailsViewBody.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:BookDetailsViewBody(),
    );
  }
}
