import 'package:disney_plus_reimagined/view/shared/colors.dart';
import 'package:disney_plus_reimagined/view/shared/widgets/custom_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DPColors.black,
      extendBody: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 12,
                ),
                child: const CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://wallpaperaccess.com/full/3532705.jpg",
                  ),
                  radius: 24,
                ),
              ),
              const SizedBox(height: 52),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 18),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Everything",
                          style:
                              Theme.of(context).textTheme.headline3!.copyWith(
                                    color: DPColors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                        ),
                        const SizedBox(width: 8),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8,
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/arrow-down-1.svg",
                            color: DPColors.gray70,
                            height: 21,
                            width: 21,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Row(
                        children: const [
                          CustomIcon(
                            icon: "assets/icons/arrow-down.svg",
                            background: DPColors.gray30,
                            padding: EdgeInsets.all(0),
                            iconColor: DPColors.gray70,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 34),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 18),
                child: Text(
                  "You might like these",
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        color: DPColors.gray70,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              const SizedBox(height: 14),
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
                  padding: const EdgeInsets.only(left: 13, right: 20),
                  itemBuilder: (BuildContext context, int index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Image.network(
                        "https://wallpapercave.com/wp/wp4916165.jpg",
                        width: 120,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
