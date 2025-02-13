import '../../core/contracts/data_state.dart';
import '../../core/contracts/i_usecase.dart';
import '../entity/mail.dart';
import '../repository/i_mail_repository.dart';

class SendMailUsecase extends IUsecase<Future<DataState>, Mail?> {
  final IMailRepository repository;

  SendMailUsecase(this.repository);

  @override
  Future<DataState> call([Mail? params]) async {
    return await repository.sendMail(params);
  }
}
