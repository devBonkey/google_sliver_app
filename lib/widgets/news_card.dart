import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_sliver_app/utils/colors.dart';
import 'package:google_sliver_app/utils/styles.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "assets/images/news.jpg",
              fit: BoxFit.cover,
            ),
          ),
          const Gap(10),
          Text(
            "Togo: Oyez, Oyez! Voici la China Mall !",
            style: Styles.headline5.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/images/man.jpg",
                      height: 30,
                      width: 30,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Gap(10),
                  Text(
                    "Ici Lomé - 3j",
                    style: Styles.headline8,
                  )
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite_outline_outlined),
                  Gap(10),
                  Icon(Icons.share),
                  Gap(10),
                  Icon(Icons.more_vert),
                ],
              ),
            ],
          ),
          const Gap(10),
          Container(
            height: 2,
            width: double.infinity,
            color: AppColors.black,
          ),
        ],
      ),
    );
  }
}
