import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  /// Creates a vertical array of children.
  final List<Widget> children;

  /// Creates background color for card
  ///
  /// * If [backgroundColor] is null, this decoration card theme background color.
  final Color? backgroundColor;

  /// Creates scrollable children for the card
  ///
  /// * If [enableScroll] is true, card children will be scrolling in the given size for the card.
  final bool enableScroll;

  ///   A border to draw above the background [color], [gradient], or [image].
  ///
  /// Follows the [shape] and [borderRadius].
  /// Use [Border] objects to describe borders that do not depend on the reading direction.
  /// Use [BoxBorder] objects to describe borders that should flip their left and right edges based on whether the text is being read left-to-right or right-to-left.
  /// Default value is `Border.fromBorderSide(BorderSide.none)`
  final BoxBorder border;

  ///Empty space to inscribe inside the [decoration]. The [child], if any, is placed inside this padding.
  /// This padding is in addition to any padding inherent in the [decoration]; see [Decoration.padding].
  /// Default value for padding is `EdgeInsets.all(8)`
  final EdgeInsetsGeometry padding;

  /// The shape to fill the background [color], [gradient], and [image] into and
  /// to cast as the [boxShadow].
  ///
  /// If this is [BoxShape.circle] then [borderRadius] is ignored.
  ///
  /// The [shape] cannot be interpolated; animating between two [BoxDecoration]s
  /// with different [shape]s will result in a discontinuity in the rendering.
  /// To interpolate between two shapes, consider using [ShapeDecoration] and
  /// different [ShapeBorder]s; in particular, [CircleBorder] instead of
  /// [BoxShape.circle] and [RoundedRectangleBorder] instead of
  /// [BoxShape.rectangle].
  ///
  /// {@macro flutter.painting.BoxDecoration.clip}
  /// Default value for [shape] is `BoxShape.rectangle`
  final BoxShape shape;

  /// A list of shadows cast by this box behind the box.
  ///
  /// The shadow follows the [shape] of the box.
  ///
  /// See also:
  ///
  ///  * [kElevationToShadow], for some predefined shadows used in Material
  ///    Design.
  ///  * [PhysicalModel], a widget for showing shadows.
  final List<BoxShadow>? boxShadow;

  /// If non-null, the corners of this box are rounded by this [BorderRadius].
  ///
  /// Applies only to boxes with rectangular shapes; ignored if [shape] is not
  /// [BoxShape.rectangle].
  ///
  /// {@macro flutter.painting.BoxDecoration.clip}
  final BorderRadius? borderRadius;

  /// How the children should be placed along the cross axis.
  ///
  /// For example, [CrossAxisAlignment.center], the default, centers the
  /// children in the cross axis (e.g., horizontally for a [Column]).
  final CrossAxisAlignment crossAxisAlignment;

  /// How the children should be placed along the main axis.
  ///
  /// For example, [MainAxisAlignment.start], the default, places the children
  /// at the start (i.e., the left for a [Row] or the top for a [Column]) of the
  /// main axis.
  final MainAxisAlignment mainAxisAlignment;

  /// A gradient to use when filling the box.
  ///
  /// If this is specified, [color] has no effect.
  ///
  /// The [gradient] is drawn under the [image].
  final Gradient? gradient;
  const CardWidget({
    Key? key,
    required this.children,
    this.padding = const EdgeInsets.all(8),
    this.borderRadius,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.boxShadow,
    this.backgroundColor,
    this.border = const Border.fromBorderSide(BorderSide.none),
    this.enableScroll = true,
    this.shape = BoxShape.rectangle,
    this.gradient,
  })  : assert(borderRadius == null || shape != BoxShape.circle,
            "When BoxShape is circle, Border radius should be null"),
        super(key: key);

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: widget.border,
          gradient: widget.gradient,
          borderRadius: (widget.shape == BoxShape.rectangle)
              ? widget.borderRadius ?? BorderRadius.circular(8)
              : null,
          color: widget.backgroundColor ?? CardTheme.of(context).color,
          boxShadow: widget.boxShadow ??
              [
                BoxShadow(
                  color: Theme.of(context).cardTheme.shadowColor ??
                      Theme.of(context).shadowColor,
                  offset: const Offset(2.0, 3.1),
                  blurRadius: 5,
                  blurStyle: BlurStyle.normal,
                )
              ],
          shape: widget.shape),
      padding: widget.padding,
      child: widget.enableScroll
          ? SingleChildScrollView(
              child: Column(
                mainAxisAlignment: widget.mainAxisAlignment,
                crossAxisAlignment: widget.crossAxisAlignment,
                children: widget.children,
              ),
            )
          : Column(
              mainAxisAlignment: widget.mainAxisAlignment,
              crossAxisAlignment: widget.crossAxisAlignment,
              children: widget.children,
            ),
    );
  }
}
