import 'package:flutter/material.dart';
import 'package:nft_marketplace/constants/constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 46,
            child: TextField(
              style: const TextStyle(
                color: AppThemes.subHeadingColor2,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: AppThemes.darkGrey,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Container(
                  height: 24,
                  width: 24,
                  margin: const EdgeInsets.only(left: 16, right: 5),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/icon/search-icon.png',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                prefixIconConstraints: const BoxConstraints(
                  minHeight: 24,
                  minWidth: 24,
                ),
                hintText: 'Search NFT',
                hintStyle: const TextStyle(
                  color: AppThemes.subHeadingColor2,
                  fontSize: 12,
                ),
                suffixIcon: Container(
                  height: 24,
                  width: 24,
                  margin: const EdgeInsets.only(right: 16),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/icon/mic-icon.png',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                suffixIconConstraints: const BoxConstraints(
                  minHeight: 24,
                  minWidth: 24,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 18),
        Container(
          height: 46,
          width: 46,
          padding: const EdgeInsets.all(11),
          decoration: BoxDecoration(
            color: AppThemes.darkGrey,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon/notification-icon.png'),
              ),
            ),
          ),
        )
      ],
    );
  }
}
