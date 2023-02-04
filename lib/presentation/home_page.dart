import 'package:flutter/material.dart';
import 'package:nft_marketplace/components/components.dart';
import 'package:nft_marketplace/constants/constants.dart';
import 'package:nft_marketplace/presentation/detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.scaffoldColor,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    top: 12,
                    right: 20,
                  ),
                  child: SearchBar(),
                ),
                const Padding(
                  padding:
                      EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 12),
                  child: Heading(textHeading: 'Live Bids'),
                ),
                Container(
                  height: 400,
                  padding: const EdgeInsets.only(left: 20),
                  child: ListView(
                    shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DetailPage(),
                            ),
                          );
                        },
                        child: const LiveBidsCard(
                          posterNFT: 'assets/images/poster-nft-1.png',
                        ),
                      ),
                      const LiveBidsCard(
                        posterNFT: 'assets/images/poster-nft-2.png',
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DetailPage(),
                            ),
                          );
                        },
                        child: const LiveBidsCard(
                          posterNFT: 'assets/images/poster-nft-1.png',
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 12),
                  child: Heading(textHeading: 'Top Creator'),
                ),
                Container(
                  height: 145,
                  padding: const EdgeInsets.only(left: 20),
                  child: ListView(
                    shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: const [
                      TopCreatorCard(
                        avatarCreator: 'assets/images/creator-1.png',
                        creatorName: 'Ghozali',
                        moneyCreator: 21100000,
                      ),
                      TopCreatorCard(
                        avatarCreator: 'assets/images/creator-2.png',
                        creatorName: 'Jejoouw',
                        moneyCreator: 29900000,
                      ),
                      TopCreatorCard(
                        avatarCreator: 'assets/images/creator-3.png',
                        creatorName: 'Zumbaaa',
                        moneyCreator: 45400000,
                      ),
                      TopCreatorCard(
                        avatarCreator: 'assets/images/creator-4.png',
                        creatorName: 'Kiriaa',
                        moneyCreator: 28900000,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Navbar(),
          ],
        ),
      ),
    );
  }
}
