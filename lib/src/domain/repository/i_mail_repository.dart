import '../../core/contracts/data_state.dart';
import '../entity/mail.dart';

abstract class IMailRepository {
  Future<DataState> sendMail(Mail? mail);
}
