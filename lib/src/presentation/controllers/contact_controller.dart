import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/contracts/data_state.dart';
import '../../core/contracts/i_usecase.dart';
import '../../core/enums/status_enum.dart';
import '../../domain/entity/mail.dart';

class ContactController {
  final IUsecase<Future<DataState>, Mail?> useCase;

  final Map<String, String> socialLinks = {
    'Instagram': 'https://www.instagram.com/mateo.manolio/',
    'Twitter': 'https://x.com/MateManolio',
    'LinkedIn': 'https://www.linkedin.com/in/mateo-manolio-b79927252/',
    'GitHub': 'https://github.com/MateoManolio',
  };

  ContactController({required this.useCase});

  Future<bool> sendMail(Mail mail) async {
    final result = await useCase.call(mail);

    if (result.state == Status.success) {
      return true;
    } else {
      return false;
    }
  }

  bool validateEmail(String? email) {
    final trimmedValue = email?.trim() ?? "";

    // Verificar si está vacío
    if (trimmedValue.isEmpty) {
      return false;
    }

    // Expresión regular más completa
    const pattern =
        r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$';
    final emailRegex = RegExp(pattern);

    // Verificar formato básico con regex
    if (emailRegex.hasMatch(trimmedValue)) {
      return true;
    } else {
      return false;
    }
  }

  void clearForm(
    TextEditingController nameController,
    TextEditingController emailController,
    TextEditingController reasonController,
  ) {
    nameController.clear();
    emailController.clear();
    reasonController.clear();
  }

  Future<bool> canLaunchUrl(parsedUrl) async => await canLaunchUrl(parsedUrl);

  Future launchSelectedUrl(parsedUrl) async => await launchUrl(parsedUrl);
}
