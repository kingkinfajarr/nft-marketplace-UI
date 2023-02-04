import 'package:flutter/material.dart';
import 'package:nft_marketplace/components/detail_card_nft.dart';
import 'package:nft_marketplace/constants/constants.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.scaffoldColor,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              children: [
                _header(context),
                const SizedBox(height: 30),
                const DetailCardNFT(
                    posterNFT: 'assets/images/poster-nft-1.png'),
                const SizedBox(height: 18),
                _creatorTitle(),
                const SizedBox(height: 18),
                _tapBar(),
                const SizedBox(height: 16),
                _content(),
                const SizedBox(height: 14),
                const Spacer(),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: _btnPlaceBid(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _header(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            height: 46,
            width: 46,
            padding: const EdgeInsets.all(11),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppThemes.darkGrey,
            ),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon/back-icon.png',
                  ),
                ),
              ),
            ),
          ),
        ),
        Gap.w64,
        Text(
          'NFT Details',
          style: AppThemes.headline1.copyWith(
            letterSpacing: 0.32,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _creatorTitle() {
    return Row(
      children: [
        Container(
          height: 42,
          width: 42,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            image: const DecorationImage(
              image: AssetImage('assets/images/creator-4.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Astroboy #001',
                style: AppThemes.headline2.copyWith(fontSize: 18),
              ),
              const SizedBox(height: 1),
              Row(
                children: [
                  Text('Owned By Bryan Wan', style: AppThemes.subHeading2),
                  const SizedBox(width: 2),
                  Container(
                    height: 12,
                    width: 12,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/icon/verif-icon.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(38),
              color: AppThemes.darkGrey),
          child: Text(
            'Follow',
            style: AppThemes.headline2.copyWith(
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }

  Widget _tapBar() {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppThemes.darkGrey,
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'NFT Details',
              style: AppThemes.subHeading2,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppThemes.darkYellow,
              ),
              child: Text(
                'Bid History',
                style: AppThemes.subHeading2.copyWith(
                  color: AppThemes.yellow,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _content() {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: const DecorationImage(
                  image: AssetImage('assets/images/creator-2.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Jejoouw',
                    style: AppThemes.headline2.copyWith(fontSize: 12),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Bid 9 min ago',
                    style: AppThemes.subHeading1.copyWith(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  height: 16,
                  width: 9,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/icon/eth-icon.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 2),
                Text(
                  '2.50 ETH',
                  style: AppThemes.headline2.copyWith(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
        Gap.h12,
        Row(
          children: [
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: const DecorationImage(
                  image: AssetImage('assets/images/creator-3.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Zumbaaa',
                    style: AppThemes.headline2.copyWith(fontSize: 12),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Bid 2 hour ago',
                    style: AppThemes.subHeading1.copyWith(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  height: 16,
                  width: 9,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/icon/eth-icon.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 2),
                Text(
                  '2.10 ETH',
                  style: AppThemes.headline2.copyWith(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        )
      ],
    );
  }

  Widget _btnPlaceBid() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 228,
          margin: const EdgeInsets.only(bottom: 20),
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: AppThemes.yellow,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 24,
                width: 24,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icon/bids-icon.png'),
                  ),
                ),
              ),
              const SizedBox(width: 6),
              Text(
                'Place a bid',
                style: AppThemes.headline2.copyWith(
                  color: AppThemes.black,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
