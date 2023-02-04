import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft_marketplace/constants/constants.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppThemes.white.withOpacity(0.1),
                ),
                borderRadius: BorderRadius.circular(20),
                color: AppThemes.darkGreyCard.withOpacity(0.5),
              ),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 24,
                          width: 24,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/icon/home-icon.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Gap.h4,
                        Text(
                          'Home',
                          style: AppThemes.subHeading2.copyWith(
                            fontSize: 10,
                            color: AppThemes.yellow,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 24,
                          width: 24,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/icon/explore-icon.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Gap.h4,
                        Text(
                          'Explore',
                          style: AppThemes.subHeading2.copyWith(fontSize: 10),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 24,
                          width: 24,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/icon/wallet-icon.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Gap.h4,
                        Text(
                          'Wallet',
                          style: AppThemes.subHeading2.copyWith(fontSize: 10),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 24,
                          width: 24,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/icon/bids-nav-icon.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Gap.h4,
                        Text(
                          'Live Bids',
                          style: AppThemes.subHeading2.copyWith(fontSize: 10),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: const DecorationImage(
                              image:
                                  AssetImage('assets/images/profile-image.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Gap.h4,
                        Text(
                          'Profile',
                          style: AppThemes.subHeading2.copyWith(fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
