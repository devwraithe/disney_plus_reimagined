import 'package:disney_plus_reimagined/view/shared/colors.dart';
import 'package:disney_plus_reimagined/view/shared/widgets/custom_icon.dart';
import 'package:flutter/material.dart';

class MovieDownload extends StatelessWidget {
  const MovieDownload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              height: 120,
              width: 200,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Stack(
                  //   alignment: Alignment.bottomCenter,
                  //   children: [
                  //     Positioned(
                  //       top: 80,
                  //       child: Flexible(
                  //         child: Container(
                  //           height: 5,
                  //           decoration: BoxDecoration(
                  //             color: DPColors.gray50,
                  //             borderRadius: BorderRadius.circular(24),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // Container(
                  //   height: 5,
                  //   width: 100,
                  //   decoration: BoxDecoration(
                  //     color: DPColors.white,
                  //     borderRadius: BorderRadius.circular(24),
                  //   ),
                  // ),

                  Align(
                    alignment: Alignment.center,
                    child: CustomIcon(
                      icon: "assets/icons/add.svg",
                      background: DPColors.gray30.withOpacity(0.8),
                      padding: const EdgeInsets.all(10),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 18),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Episode 1, 39min",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: DPColors.gray50,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                const SizedBox(height: 6),
                Text(
                  "The Mandalorian",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: DPColors.white,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                const SizedBox(height: 10),
                const Spacer(),
                CustomIcon(
                  icon: "assets/icons/add.svg",
                  background: DPColors.gray30.withOpacity(0.8),
                  padding: const EdgeInsets.all(6),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
