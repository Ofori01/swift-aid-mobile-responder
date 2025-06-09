import 'package:flutter/material.dart';
import 'package:swift_aid_responder_app/common/widgets/custom_shapes/curved_edges/curved_edge.dart';

class SPrimaryFooter extends StatelessWidget {
  const SPrimaryFooter({
    super.key,
    this.child,
    this.backgroundColor = Colors.grey,
    this.height = 200,
  });
  final Widget? child;
  final Color? backgroundColor;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CurvedEdge(),
      child: Container(height: height, color: backgroundColor, child: child),
    );
  }
}
