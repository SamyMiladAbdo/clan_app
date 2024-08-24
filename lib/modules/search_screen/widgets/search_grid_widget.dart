import 'package:clan_app/core/utils/widgets/spacre_widget.dart';
import 'package:clan_app/modules/search_screen/widgets/product_widget.dart';
import 'package:flutter/material.dart';

class SearchGridWidget extends StatelessWidget {
  const SearchGridWidget({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
        const VerticalSpace(25.0),
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 3,
            mainAxisSpacing: 50.0,
            crossAxisSpacing: VerticalSpace.padding(18.0),
            childAspectRatio: 1 / 2.1,
            children: List.generate(6, (index) {
              return const ItemWidget();
            }),
          ),
        ),
      ],
    );
  }
}
