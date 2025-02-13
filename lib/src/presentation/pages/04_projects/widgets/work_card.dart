import 'package:flutter/material.dart';

import '../../../../core/util.dart';
import '../../../widgets/separator.dart';

class WorkCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final bool isSmallScreen;

  const WorkCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.isSmallScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Utils.colorScheme(context).primaryContainer,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(isSmallScreen ? 8.0 : 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: isSmallScreen
                      ? Utils.textStyle(context)
                          .bodyMedium
                          ?.copyWith(fontWeight: FontWeight.bold)
                      : Utils.textStyle(context)
                          .bodyLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const Separator(height: 4),
                Text(
                  description,
                  style: isSmallScreen
                      ? Utils.textStyle(context).bodySmall
                      : Utils.textStyle(context).bodyMedium,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
