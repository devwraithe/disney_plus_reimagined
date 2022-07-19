import 'package:flutter/material.dart';
import '../../colors.dart';

class CircularButton extends StatelessWidget {
  final Function()? action;
  final String text;
  final bool isLoading;

  const CircularButton({
    Key? key,
    this.action,
    required this.text,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: action,
      child: _getChild(context),
      style: ElevatedButtonTheme.of(context).style,
    );
  }

  Widget _getChild(BuildContext context) {
    if (isLoading) {
      return const SizedBox(
        height: 26.0,
        width: 26.0,
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation(DPColors.white),
          strokeWidth: 2.0,
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.only(top: 2),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
              color: DPColors.white,
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }
}
