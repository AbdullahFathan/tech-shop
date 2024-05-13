import 'package:flutter/material.dart';

// Untuk efek shimer loading
class ShimmerLoading extends StatefulWidget {
  const ShimmerLoading({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<ShimmerLoading> createState() => _ShimmerLoadingState();
}

class _ShimmerLoadingState extends State<ShimmerLoading>
    with SingleTickerProviderStateMixin {
  late AnimationController _shimmerController;

  @override
  void initState() {
    super.initState();

    _shimmerController = AnimationController.unbounded(vsync: this)
      ..repeat(min: -0.5, max: 1.5, period: const Duration(milliseconds: 1500));
  }

  @override
  void dispose() {
    _shimmerController.dispose();
    super.dispose();
  }

  LinearGradient get gradient => LinearGradient(
        colors: const [
          Color(0xFFEBEBF4),
          Color(0xFFF4F4F4),
          Color(0xFFEBEBF4),
        ],
        stops: const [
          0.1,
          0.3,
          0.4,
        ],
        begin: const Alignment(-1.0, -0.3),
        end: const Alignment(1.0, 0.3),
        transform:
            SlidingGradientTransform(slidePercent: _shimmerController.value),
      );
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcATop,
      shaderCallback: (bounds) {
        return gradient.createShader(bounds);
      },
      child: widget.child,
    );
  }
}

class SlidingGradientTransform extends GradientTransform {
  const SlidingGradientTransform({
    required this.slidePercent,
  });

  final double slidePercent;

  @override
  Matrix4? transform(Rect bounds, {TextDirection? textDirection}) {
    return Matrix4.translationValues(bounds.width * slidePercent, 0.0, 0.0);
  }
}

//Membuat item skeletonnya
class ShimmerItem extends StatelessWidget {
  final double height;
  final double witdh;
  final double radius;
  final double marginTop;
  const ShimmerItem({
    Key? key,
    this.height = 40,
    this.witdh = 200,
    this.radius = 12,
    this.marginTop = 7,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: witdh,
      height: height,
      margin: EdgeInsets.only(top: marginTop),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        color: const Color(0xFFEBEBF4),
      ),
      child:
          const UnconstrainedBox(child: CircularProgressIndicator.adaptive()),
    );
  }
}
