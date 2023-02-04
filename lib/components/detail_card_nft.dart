import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft_marketplace/constants/constants.dart';

class DetailCardNFT extends StatelessWidget {
  const DetailCardNFT({
    Key? key,
    required this.posterNFT,
  }) : super(key: key);

  final String posterNFT;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
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
            margin: const EdgeInsets.symmetric(horizontal: 58),
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppThemes.white.withOpacity(0.3),
                    ),
                    borderRadius: BorderRadius.circular(20),
                    color: AppThemes.white.withOpacity(0.2),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                  style: AppThemes.headline2
                                      .copyWith(fontSize: 16),
                                ),
                              ],
                            ),
                            Text(
                              'Highest bid',
                              style: AppThemes.headline2.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFFEAEAEA),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppThemes.white,
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 24,
                              width: 24,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/icon/love-icon.png'),
                                ),
                              ),
                            ),
                            const SizedBox(width: 2),
                            Text(
                              '29K',
                              style: AppThemes.headline2.copyWith(
                                color: AppThemes.black,
                              ),
                            ),
                          ],
                        ),
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
