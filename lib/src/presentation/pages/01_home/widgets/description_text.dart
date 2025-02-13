import 'package:flutter/material.dart';

import 'package:portfolio/generated/l10n.dart';

import '../../../../core/util.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(S.of(context).home_description,
        style: Utils.textStyle(context).bodyLarge);
  }
}
