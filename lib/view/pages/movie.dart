import 'package:disney_plus_reimagined/view/shared/colors.dart';
import 'package:disney_plus_reimagined/view/shared/widgets/custom_icon.dart';
import 'package:disney_plus_reimagined/view/shared/widgets/movie_download.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Movie extends StatefulWidget {
  const Movie({Key? key}) : super(key: key);
  @override
  State<Movie> createState() => _MovieState();
}

class _MovieState extends State<Movie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DPColors.black,
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 700,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 16,
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://wallpapercave.com/wp/wp4916165.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(42),
                  bottomRight: Radius.circular(42),
                ),
              ),
              child: Column(
                children: [
                  SafeArea(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: CustomIcon(
                        icon: "assets/icons/add.svg",
                        background: DPColors.gray30.withOpacity(0.8),
                        padding: const EdgeInsets.all(12),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () => {},
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 3,
                                top: 1,
                              ),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/play.svg",
                                    width: 20,
                                    height: 20,
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    "Episode 3",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          color: DPColors.black,
                                          fontWeight: FontWeight.w700,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            style:
                                ElevatedButtonTheme.of(context).style!.copyWith(
                                      minimumSize: MaterialStateProperty.all(
                                        const Size(160, 62),
                                      ),
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            48,
                                          ),
                                        ),
                                      ),
                                    ),
                          ),
                          const SizedBox(width: 10),
                          const CustomIcon(
                            icon: "assets/icons/add.svg",
                            background: DPColors.gray50,
                            padding: EdgeInsets.all(12),
                          ),
                        ],
                      ),
                      const CustomIcon(
                        icon: "assets/icons/more.svg",
                        background: DPColors.gray50,
                        padding: EdgeInsets.all(12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "2019 - 2 Seasons - PJ 13 - CC - 4K",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: DPColors.gray50,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: const BoxDecoration(
                color: DPColors.gray10,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(42),
                  topRight: Radius.circular(42),
                ),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 28,
              ),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Text(
                    "Season 2",
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: DPColors.white,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Space Western, Action, Adventure, 8.9 Rating",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: DPColors.gray50,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  const SizedBox(height: 52),
                  const MovieDownload(),
                  const SizedBox(height: 22),
                  const MovieDownload(),
                  const SizedBox(height: 22),
                  const MovieDownload(),
                  const SizedBox(height: 48),
                  Text(
                    "Trailers and Info",
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: DPColors.white,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  const SizedBox(height: 25),
                  SizedBox(
                    height: 180,
                    child: ListView.separated(
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(
                        width: 16,
                      ),
                      itemCount: 6,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      // padding: const EdgeInsets.only(left: 13, right: 20),
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () => {
                            // Navigator.pushNamed(
                            //   context,
                            //   routes.movie,
                            // ),
                          },
                          child: Container(
                            height: 180,
                            width: 240,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              image: const DecorationImage(
                                image: NetworkImage(
                                  "https://wallpapercave.com/wp/wp7419777.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 28),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Director",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: DPColors.gray50,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Jon Favreau",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: DPColors.white,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      const SizedBox(height: 26),
                      Text(
                        "Cast",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: DPColors.gray50,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Pedro Pascal, Nick Nolte, Giancarlo Esposito, Omid Abtahi, Carl Weathers, Gina Carano",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: DPColors.white,
                              fontWeight: FontWeight.w500,
                              height: 1.5,
                            ),
                      ),
                      const SizedBox(height: 26),
                      Text(
                        "Music",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: DPColors.gray50,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Ludwig Goransson",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: DPColors.white,
                              fontWeight: FontWeight.w500,
                              height: 1.5,
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 48),
                  Text(
                    "More Like This",
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: DPColors.white,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  const SizedBox(height: 25),
                  SizedBox(
                    height: 180,
                    child: ListView.separated(
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(
                        width: 11,
                      ),
                      itemCount: 6,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          // onTap: () => {
                          //   Navigator.pushNamed(
                          //     context,
                          //     routes.movie,
                          //   ),
                          // },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: Image.network(
                              "https://wallpapercave.com/wp/wp4916165.jpg",
                              width: 120,
                              height: 180,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
