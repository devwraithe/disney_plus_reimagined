import 'package:disney_plus_reimagined/view/shared/colors.dart';
import 'package:disney_plus_reimagined/view/shared/widgets/custom_avatar.dart';
import 'package:disney_plus_reimagined/view/shared/widgets/custom_icon.dart';
import 'package:flutter/material.dart';
import '../shared/routes.dart' as routes;

class Watchers extends StatefulWidget {
  const Watchers({Key? key}) : super(key: key);
  @override
  State<Watchers> createState() => _WatchersState();
}

class _WatchersState extends State<Watchers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DPColors.black,
      extendBody: true,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 38, 20, 38),
        child: SafeArea(
          child: Column(
            children: [
              Text(
                "Who is watching?",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              const Spacer(),
              Center(
                child: Column(
                  children: [
                    CustomAvatar(
                      image: "https://wallpaperaccess.com/full/3532705.jpg",
                      title: "Scar",
                      action: () => Navigator.pushNamed(
                        context,
                        routes.home,
                      ),
                    ),
                    const SizedBox(height: 28),
                    CustomAvatar(
                      image:
                          "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/b11a5436414595.571b649958f2b.jpg",
                      title: "Khan",
                      action: () => Navigator.pushNamed(
                        context,
                        routes.home,
                      ),
                    ),
                    const SizedBox(height: 28),
                    CustomAvatar(
                      image:
                          "https://cdn1.parksmedia.wdprapps.disney.com/media/blog/wp-content/uploads/2012/07/aid110107SMALL.jpg",
                      title: "Beast",
                      action: () => Navigator.pushNamed(
                        context,
                        routes.home,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomIcon(
                    icon: "assets/icons/add.svg",
                    background: DPColors.gray10,
                    padding: EdgeInsets.all(14),
                  ),
                  Text(
                    "Edit",
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                          color: DPColors.accent,
                          fontWeight: FontWeight.w400,
                        ),
                  ),

                  // text
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
