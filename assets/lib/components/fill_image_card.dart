import 'package:flutter/material.dart';


class FillImageCard extends StatefulWidget {
  const FillImageCard({
    super.key,
    this.width,
    this.height,
    this.heightImage,
    this.borderRadius = (33),
    this.contentPadding,
    required this.imageProvider,
    this.tags,
    this.title,
    this.description,
    this.footer,
    this.color = Colors.black12,
    this.tagSpacing,
    this.tagRunSpacing,
  });

  /// card width
  final double? width;

  /// card height
  final double? height;

  /// image height
  final double? heightImage;

  /// border radius value
  final double borderRadius;

  /// spacing between tag
  final double? tagSpacing;

  /// run spacing between line tag
  final double? tagRunSpacing;

  /// content padding
  final EdgeInsetsGeometry? contentPadding;

  /// image provider
  final ImageProvider imageProvider;

  /// list of widgets
  final List<Widget>? tags;

  /// card color
  final Color color;

  /// widget title of card
  final Widget? title;

  /// widget description of card
  final Widget? description;

  /// widget footer of card
  final Widget? footer;

  @override
  State<FillImageCard> createState() => _FillImageCardState();
}

class _FillImageCardState extends State<FillImageCard> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: widget.color, // Set the background color
      radius: widget.borderRadius / 8, // Half the radius for CircleAvatar
      backgroundImage: widget.imageProvider, // Set the image provider
      child: Container( // Add a container for content
        padding: widget.contentPadding, // Apply content padding
        child: Column( // Add your content widgets here (title, description, footer, etc.)
          children: [
            if (widget.title != null) widget.title!, // Add title if available
            if (widget.description != null) widget.description!, // Add description if available
            if (widget.footer != null) widget.footer!, // Add footer if available
          ],
        ),
      ),
    );
  }
}
