import 'package:flutter/material.dart';
import 'package:mbeah_online/resources/constants.dart';
import 'package:mbeah_online/resources/responsive.dart';

class AnimatedImageContainer extends StatefulWidget {
  final double? width;
  final double? height;
  const AnimatedImageContainer({super.key, this.width, this.height});

  @override
  State<AnimatedImageContainer> createState() => _AnimatedImageContainerState();
}

class _AnimatedImageContainerState extends State<AnimatedImageContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )
    ..repeat(reverse: true); // repeate the animation loop
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        final value = controller.value;
        return Transform.translate(
          offset: Offset(0, 2 * value),
          child: Container(
            height: widget.height,
            width: widget.width,
            padding: const EdgeInsets.all(defaultPadding / 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(colors: [Colors.pinkAccent, Colors.blue]),
              boxShadow: const [
                BoxShadow(
                  color: Colors.pink,
                  offset: Offset(-2, 0),
                  blurRadius: 20,
                ),
                BoxShadow(
                  color: Colors.blue,
                  offset: Offset(2, 0),
                  blurRadius: 20,
                ),
              ],
            ),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Image.asset(
                'images/image.png',
                height: Responsive.isLargeMobile(context)
                    ? MediaQuery.sizeOf(context).width * 0.2
                    : Responsive.isTablet(context)
                        ? MediaQuery.sizeOf(context).width * 0.14
                        : 200,
                width: Responsive.isLargeMobile(context)
                    ? MediaQuery.sizeOf(context).width * 0.2
                    : Responsive.isTablet(context)
                        ? MediaQuery.sizeOf(context).width * 0.14
                        : 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}
