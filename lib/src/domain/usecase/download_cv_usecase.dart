import '../../core/contracts/data_state.dart';
import '../../core/contracts/i_usecase.dart';
import '../repository/i_cv_repository.dart';

class DownloadCVUseCase implements IUsecase<Future<DataState<bool>>, String?> {
  final ICVRepository repository;

  DownloadCVUseCase(this.repository);

  @override
  Future<DataState<bool>> call([String? params]) async {
    return await repository.downloadCV(params);
  }
}
