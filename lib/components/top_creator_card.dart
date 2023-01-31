import 'package:flutter/cupertino.dart';
import 'package:nft_marketplace/constants/constants.dart';
import 'package:nft_marketplace/helpers/currency_formatter.dart';

class TopCreatorCard extends StatelessWidget {
  const TopCreatorCard({
    Key? key,
    required this.avatarCreator,
    required this.creatorName,
    required this.moneyCreator,
  }) : super(key: key);

  final String avatarCreator;
  final String creatorName;
  final int moneyCreator;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 118,
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppThemes.darkGrey,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 58,
                width: 58,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                    image: AssetImage(
                      avatarCreator,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: 14,
                  width: 14,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/icon/checklist-icon.png',
                      ),
                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Gap.h12,
          Text(creatorName, style: AppThemes.headline2),
          Gap.h4,
          Text(
            CurrencyFormatter()
                .formatter
                .format(moneyCreator)
                .replaceAll(',', '.'),
            style: AppThemes.subHeading2,
          ),
        ],
      ),
    );
  }
}
