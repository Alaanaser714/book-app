import 'package:flutter/material.dart';

import 'widgets/book_details_body.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsBody(),
    );
  }
}
