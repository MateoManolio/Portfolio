import 'package:portfolio/src/core/contracts/data_state.dart';
import 'package:emailjs/emailjs.dart' as emailjs;

import '../../domain/entity/mail.dart';
import '../../domain/repository/i_mail_repository.dart';
import '../models/mail_model.dart';

class MailRepository extends IMailRepository {
  final String publicKey;
  final String privateKey;

  MailRepository({required this.publicKey, required this.privateKey});
  @override
  Future<DataState> sendMail(Mail? mail) async {
    final model = MailModel.fromEntity(mail);

    emailjs.init(emailjs.Options(
      publicKey: publicKey,
      privateKey: privateKey,
    ));

    final response = await emailjs.send(
      model.serviceID,
      model.templateID,
      model.templateParams,
      emailjs.Options(
        publicKey: publicKey,
        privateKey: privateKey,
      ),
    );

    if (response.status == 200) {
      return DataSuccess(data: response.text);
    } else {
      return DataFailure(error: Exception(response.text));
    }
  }
}
