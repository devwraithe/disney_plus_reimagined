import 'package:disney_plus_reimagined/view/shared/colors.dart';
import 'package:flutter/material.dart';

class CustomAvatar extends StatelessWidget {
  final String image;
  final String title;
  final Function()? action;

  const CustomAvatar({
    Key? key,
    required this.image,
    required this.title,
    this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              image,
            ),
            radius: 38,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: DPColors.gray50,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ],
      ),
    );
  }
}
