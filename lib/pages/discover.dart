// ignore_for_file: public_member_api_docs, sort_constructors_first
//devBonkey
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sliver_app/utils/colors.dart';
import 'package:google_sliver_app/utils/styles.dart';
import 'package:google_sliver_app/widgets/column_search.dart';
import 'package:google_sliver_app/widgets/news_card.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            snap: true,
            pinned: true,
            expandedHeight: 200,
            backgroundColor: AppColors.primary,
            leading: Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(50)),
                child: Image.asset("assets/images/chimie.png")),
            actions: [
              ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: CircleAvatar(
                  radius: 35,
                  backgroundColor: AppColors.white,
                  backgroundImage: const AssetImage(
                    "assets/images/man.jpg",
                  ),
                ),
              ),
            ],
            flexibleSpace: Center(
              child: Text(
                "Google",
                style: Styles.headline1.copyWith(
                  color: AppColors.white,
                ),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(
                68.0,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.mic),
                          Gap(10),
                          Icon(Icons.camera_alt_outlined),
                        ],
                      ),
                      hintText: 'Search...',
                      labelStyle: Styles.headline6,
                      hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: AppColors.black,
                        ),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ),

          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    height: 100,
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: 20,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.black,
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BuildColumnSearch(
                          color: Color.fromARGB(255, 174, 114, 10),
                          icon: Icons.image,
                          name: "Gallery",
                        ),
                        BuildColumnSearch(
                          color: Color.fromARGB(240, 56, 158, 241),
                          icon: Icons.search,
                          name: "Translate",
                        ),
                        BuildColumnSearch(
                          color: Colors.green,
                          icon: Icons.school,
                          name: "Homework",
                        ),
                        BuildColumnSearch(
                          color: Color.fromARGB(159, 210, 59, 4),
                          icon: Icons.music_note,
                          name: "Sings",
                        ),
                      ],
                    ),
                  ),
                  const Gap(30),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          width: MediaQuery.sizeOf(context).width / 2,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: AppColors.black, width: 2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Nasdap-100",
                                style: Styles.headline6,
                              ),
                              const Gap(5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "17,588",
                                    style: Styles.headline7,
                                  ),
                                  const Gap(10),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 15,
                                    ),
                                    decoration: BoxDecoration(
                                      color: AppColors.red.withOpacity(.5),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          child: Icon(
                                            Icons.arrow_downward,
                                            color: AppColors.black,
                                            size: 16,
                                          ),
                                        ),
                                        const Gap(10),
                                        Text(
                                          "18%",
                                          style: Styles.headline7,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const Gap(10),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),
                          width: MediaQuery.sizeOf(context).width / 2,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: AppColors.black, width: 2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "75 AQI",
                                    style: Styles.headline6,
                                  ),
                                  Text(
                                    "Near you - 2h",
                                    style: Styles.headline8,
                                  ),
                                ],
                              ),
                              Container(
                                height: 25,
                                width: 25,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 224, 202, 1),
                                  shape: BoxShape.circle,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(20),
                  const NewsCard(),
                  const NewsCard(),
                  const NewsCard(),
                  const NewsCard(),
                  const NewsCard(),
                ],
              ),
            ),
          ),
          //SliverList(delegate: )
        ],
      ),
    );
  }
}
