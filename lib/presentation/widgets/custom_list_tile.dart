import 'package:flutter/material.dart';
import 'package:flutter_screwdriver/flutter_screwdriver.dart';

class CustomListTile extends StatelessWidget {
  final String label;
  final Widget? leading;
  final Widget? trailing;
  final String? subtitle;
  final ShapeBorder? shape;

  const CustomListTile({
    super.key,
    required this.label,
    this.leading,
    this.trailing,
    this.subtitle,
    this.shape,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: shape,
      overlayColor: MaterialStateProperty.all(
          context.theme.colorScheme.primary.withOpacity(0.1)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 12, 16, 12),
        child: Row(
          children: [
            if (leading != null) ...[
              SizedBox.square(
                dimension: 24,
                child: IconTheme(
                  data: IconTheme.of(context).copyWith(
                    size: 20,
                    color: context.theme.colorScheme.onSurface.withOpacity(0.5),
                  ),
                  child: Center(child: leading),
                ),
              ),
              const SizedBox(width: 12),
            ],
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  if (subtitle != null) ...[
                    const SizedBox(height: 2),
                    Text(
                      subtitle!,
                      style: const TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            if (trailing != null) ...[
              const SizedBox(width: 12),
              IconTheme(
                data: IconTheme.of(context).copyWith(
                  size: 16,
                  color: context.theme.colorScheme.onSurface.withOpacity(0.5),
                ),
                child: trailing!,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
