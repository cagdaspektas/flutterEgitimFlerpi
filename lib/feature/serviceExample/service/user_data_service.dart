import 'package:vexana/vexana.dart';

import '../model/user_data_model.dart';

abstract class IGetDataUserService {
  final INetworkManager networkManager;

  IGetDataUserService(this.networkManager);
  Future<IResponseModel<GetUserDataModel?>> getUserData();
}

class GetDataUserService extends IGetDataUserService {
  GetDataUserService(super.networkManager);

  @override
  Future<IResponseModel<GetUserDataModel?>> getUserData() {
    final response = networkManager.send<GetUserDataModel, GetUserDataModel>("api/users/2",
        parseModel: GetUserDataModel(), method: RequestType.GET);
    return response;
  }
}
