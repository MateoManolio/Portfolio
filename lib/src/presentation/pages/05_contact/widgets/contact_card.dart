import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';

import '../../../../core/util.dart';
import '../../../../domain/entity/mail.dart';
import '../../../controllers/contact_controller.dart';
import 'custom_text_field.dart';

class ContactCard extends StatefulWidget {
  final ContactController contactController;
  const ContactCard({super.key, required this.contactController});

  @override
  State<ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _reasonController = TextEditingController();
  bool _isSending = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CustomTextField(
                controller: _nameController,
                label: S.of(context).contact_form_name,
                validator: (value) => value!.isEmpty
                    ? S.of(context).contact_form_name_empty
                    : null,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: _emailController,
                label: S.of(context).contact_form_email,
                validator: (value) =>
                    !widget.contactController.validateEmail(value)
                        ? S.of(context).contact_form_email_empty
                        : null,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: _reasonController,
                label: S.of(context).contact_form_reason,
                validator: (value) => value!.isEmpty
                    ? S.of(context).contact_form_reason_empty
                    : null,
                maxLines: 3,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  if (_isSending == false) {
                    _submitForm(Mail(
                      fromName: _nameController.text,
                      fromEmail: _emailController.text,
                      message: _reasonController.text,
                    ));
                  }
                },
                child: _isSending
                    ? const CircularProgressIndicator(color: Colors.white)
                    : FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          S.of(context).contact_send_button,
                          style: Utils.textStyle(context).bodyLarge,
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitForm(Mail mail) {
    if (!_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(S.of(context).contact_form_validation_error),
          backgroundColor: Utils.colorScheme(context).error,
        ),
      );
      return;
    }

    setState(() => _isSending = true);

    try {
      unawaited(
        widget.contactController.sendMail(mail).then(
          (_) {
            if (mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(S.of(context).snackbar_email_success),
                  backgroundColor: Utils.colorScheme(context).tertiary,
                ),
              );
            }
            setState(() => _isSending = false);
            widget.contactController.clearForm(
                _nameController, _emailController, _reasonController);
          },
        ),
      );
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('${S.of(context).snackbar_error}${error.toString()}'),
          backgroundColor: Utils.colorScheme(context).error,
        ),
      );
      setState(() => _isSending = false);
    }
  }
}
