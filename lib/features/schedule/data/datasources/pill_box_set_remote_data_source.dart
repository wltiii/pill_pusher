import 'package:pill_pusher/features/schedule/data/models/pill_box_set_model.dart';

abstract class PillBoxSetRemoteDataSource {
  Future<PillBoxSetModel> getByDependent(String dependent);
}

class PillBoxSetRemoteDataSourceImpl implements PillBoxSetRemoteDataSource {
  @override
  Future<PillBoxSetModel> getByDependent(String dependent) {
    // TODO: implement getByDependent
    throw UnimplementedError();
  }

}
