import 'package:flutter/material.dart';

import 'custom_list_items.dart';

class CustomListViewBookDetails extends StatelessWidget {
  const CustomListViewBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .2,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CustomListItems(imageUrl: 'https://th.bing.com/th?q=%d8%b5%d9%88%d8%b1+%d9%83%d8%aa%d8%a8+%d9%83%d8%aa%d8%a7%d8%a8&w=120&h=120&c=1&rs=1&qlt=90&cb=1&dpr=1.3&pid=InlineBlock&mkt=en-XA&cc=EG&setlang=en&adlt=strict&t=1&mw=247',);
        },
      ),
    );
  }
}
