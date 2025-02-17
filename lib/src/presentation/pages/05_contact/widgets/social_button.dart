import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/generated/l10n.dart';

import '../../../../core/util.dart';
import '../../../controllers/contact_controller.dart';
import '../../../widgets/separator.dart';

class SocialButton extends StatefulWidget {
  final ContactController controller;
  const SocialButton({super.key, required this.controller});

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).contact_social_social_media,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        const Separator(height: 20),
        for (final entry in widget.controller.socialLinks.entries)
          _buildSocialButton(
            'assets/icons/${entry.key.toLowerCase()}.svg',
            entry.key,
            entry.value,
          ),
      ],
    );
  }

  Widget _buildSocialButton(String iconPath, String label, String url) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () => _launchSocialUrl(url),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                iconPath,
                semanticsLabel: label,
                width: 40,
                height: 40,
              ),
              const Separator(width: 15),
              Expanded(
                child: Text(
                  label,
                  style: Utils.textStyle(context).labelLarge,
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _launchSocialUrl(String url) async {
    final Uri parsedUrl = Uri.parse(url);

    try {
      await widget.controller.launchSelectedUrl(parsedUrl);
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: ${e.toString()}')),
        );
      }
    }
  }
}
