import 'package:flutter/material.dart';
import 'package:nft_marketplace/constants/constants.dart';

class Heading extends StatelessWidget {
  const Heading({
    Key? key,
    required this.textHeading,
  }) : super(key: key);

  final String textHeading;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          textHeading,
          style: AppThemes.headline1,
        ),
        Text(
          'See More',
          style: AppThemes.subHeading1,
        ),
      ],
    );
  }
}
