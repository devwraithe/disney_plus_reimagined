import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../shared/colors.dart';
import '../shared/routes.dart' as routes;

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);
  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> with SingleTickerProviderStateMixin {
  late AnimationController _logoController;
  @override
  void initState() {
    super.initState();
    _logoController = AnimationController(
      vsync: this,
    );
  }

  @override
  void dispose() {
    _logoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DPColors.black,
      extendBody: true,
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(
            18,
            170,
            18,
            70,
          ),
          child: Column(
            children: [
              SvgPicture.asset(
                "assets/icons/logo-vector.svg",
                width: 160,
              ),
              const Spacer(),
              GestureDetector(
                onTap: () => {
                  Navigator.pushNamed(
                    context,
                    routes.watchers,
                  ),
                },
                child: Text(
                  "Tap here to start",
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        color: DPColors.gray50,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
