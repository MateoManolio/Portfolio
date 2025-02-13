import '../../domain/entity/mail.dart';

class MailModel {
  final String serviceID;
  final String templateID;
  final Map<String, dynamic> templateParams;

  MailModel({
    required this.serviceID,
    required this.templateID,
    required this.templateParams,
  });

  factory MailModel.fromEntity(Mail? mail) {
    return MailModel(
      serviceID: 'service_qt4ovhf',
      templateID: 'template_keirg2w',
      templateParams: {
        "from_name": mail?.fromEmail,
        "from_email": mail?.fromEmail,
        "message": mail?.message,
      },
    );
  }
}
