import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft_marketplace/constants/constants.dart';

class LiveBidsCard extends StatelessWidget {
  const LiveBidsCard({
    Key? key,
    required this.posterNFT,
  }) : super(key: key);

  final String posterNFT;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 280,
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(posterNFT),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 22),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 19, sigmaY: 19),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppThemes.white.withOpacity(0.2),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppThemes.red,
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 5,
                              width: 5,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/icon/circle-icon.png',
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 2),
                            Text(
                              'Live',
                              style: AppThemes.headline2.copyWith(
                                fontSize: 12,
                                color: AppThemes.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 4),
                      Container(
                        height: 16,
                        width: 16,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icon/time-icon.png'),
                          ),
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '22h : 25m : 09s',
                        style: AppThemes.subHeading1.copyWith(
                          color: AppThemes.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppThemes.white.withOpacity(0.3),
                    ),
                    borderRadius: BorderRadius.circular(20),
                    color: AppThemes.white.withOpacity(0.2),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/creator-4.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 7),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Astroboy #001',
                              style: AppThemes.headline2.copyWith(fontSize: 12),
                            ),
                            const SizedBox(height: 2),
                            Row(
                              children: [
                                Text(
                                  'By Bryan Wan',
                                  style: AppThemes.headline2.copyWith(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
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
                                '2.70 ETH',
                                style:
                                    AppThemes.headline2.copyWith(fontSize: 12),
                              ),
                            ],
                          ),
                          const SizedBox(height: 2),
                          Text(
                            'Highest bid',
                            style: AppThemes.headline2.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
