import 'package:vexana/vexana.dart';

import '../model/get_list_example_model.dart';

abstract class IGetListExample {
  final INetworkManager networkManager;

  IGetListExample(this.networkManager);

  Future<List<GetListUserDataModel>?> getListData();
}

class GetListExample extends IGetListExample {
  GetListExample(super.networkManager);

  @override
  Future<List<GetListUserDataModel>?> getListData() async {
    final response = await networkManager.send<GetListUserDataModel, List<GetListUserDataModel>>("posts?userId=1",
        parseModel: GetListUserDataModel(), method: RequestType.GET);
    return response.data;
  }
}
