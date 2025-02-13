import '../../core/contracts/data_state.dart';
import '../../core/contracts/i_usecase.dart';

class HomeController {
  final IUsecase<Future<DataState<bool>>, String?> useCase;

  HomeController(this.useCase);

  Future<bool> downloadCV(String? language) async {
    final result = await useCase.call(language);

    if (result is DataSuccess) {
      return true;
    } else {
      return false;
    }
  }
}
