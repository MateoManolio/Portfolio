import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';

import '../../../core/util.dart';
import '../../controllers/contact_controller.dart';
import 'widgets/contact_card.dart';
import 'widgets/social_button.dart';

class ContactPage extends StatelessWidget {
  final ContactController contactController;
  const ContactPage({super.key, required this.contactController});

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = Utils.isMobile(context: context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 16.0,
              bottom: isSmallScreen ? 20.0 : 0.0,
            ),
            child: Text(S.of(context).contact_title,
                style: Utils.textStyle(context).displayLarge),
          ),
          const SizedBox(height: 16),
          LayoutBuilder(
            builder: (context, constraints) {
              if (isSmallScreen) {
                return _buildMobileLayout();
              }
              return _buildDesktopLayout();
            },
          ),
        ],
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 40,
        children: [
          Flexible(
            flex: 2,
            child: _buildProfileImage(),
          ),
          Flexible(
            flex: 3,
            child: ContactCard(
              contactController: contactController,
            ),
          ),
          Expanded(
            flex: 2,
            child: SocialButton(
              controller: contactController,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMobileLayout() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        spacing: 30,
        children: [
          _buildProfileImage(),
          ContactCard(
            contactController: contactController,
          ),
          SocialButton(
            controller: contactController,
          ),
        ],
      ),
    );
  }

  Widget _buildProfileImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        'assets/images/myself_portrait_2.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
