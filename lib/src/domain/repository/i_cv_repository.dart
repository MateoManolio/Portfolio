import '../../core/contracts/data_state.dart';

abstract class ICVRepository {
  Future<DataState<bool>> downloadCV(String? language);
}
