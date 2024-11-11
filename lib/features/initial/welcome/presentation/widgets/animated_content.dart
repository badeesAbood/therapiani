part of '../pages/welcome_page.dart';

class _AnimatedContent extends StatefulWidget {
  final String title;

  final String description;

  final LottieBuilder image;

  const _AnimatedContent({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  State<_AnimatedContent> createState() => _AnimatedContentState();
}

class _AnimatedContentState extends State<_AnimatedContent>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  double get contSized => 200;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller
      ..stop()
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
            child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              right: 0,
              top: 0,
              bottom: 0,
              left: 0,
              child: widget.image,
            ),
            RotationTransition(
              turns: CurvedAnimation(
                  parent: Tween<double>(begin: 0, end: 1).animate(_controller),
                  curve: Curves.bounceOut),
              child: SizedBox(
                width: contSized,
                height: contSized,
                child: CustomPaint(
                  painter: HexagonPainter(contSized,
                      Theme.of(context).primaryColor.withOpacity(0.4)),
                ),
              ),
            ),
          ],
        )),
        const SizedBox(
          height: 30,
        ),
        Text(
          widget.title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          widget.description,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}

class HexagonPainter extends CustomPainter {
  static const int SIDES_OF_HEXAGON = 6;
  late final double value;
  final Color color;
  late final Offset center;

  HexagonPainter(double value, this.color) {
    center = Offset(value / 2, value / 2);

    this.value = value / 2;
  }

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = this.color;
    Path path = createHexagonPath();
    canvas.drawPath(path, paint);
  }

  Path createHexagonPath() {
    final path = Path();
    var angle = (math.pi * 2) / SIDES_OF_HEXAGON;
    Offset firstPoint = Offset(value * math.cos(0.0), value * math.sin(0.0));
    path.moveTo(firstPoint.dx + center.dx, firstPoint.dy + center.dy);
    for (int i = 1; i <= SIDES_OF_HEXAGON; i++) {
      double x = value * math.cos(angle * i) + center.dx;
      double y = value * math.sin(angle * i) + center.dy;
      path.lineTo(x, y);
    }
    path.close();
    return path;
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
