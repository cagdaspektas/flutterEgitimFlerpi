import 'package:flutter/material.dart';
import 'package:flutter_egitim/core/base/base_view_model.dart';
import 'package:mobx/mobx.dart';

import '../model/get_list_example_model.dart';
import '../service/get_list_ex_service.dart';
part 'get_list_vm.g.dart';

class GetListUserViewModel = _GetListUserViewModelBase with _$GetListUserViewModel;

abstract class _GetListUserViewModelBase with Store, BaseViewModel {
  late IGetListExample getListExample;
  @observable
  List<GetListUserDataModel>? listData;
  @observable
  bool isLoading = false;

  @override
  void setContext(BuildContext context) => myContext = context;
  @override
  init() {
    getListExample = GetListExample(networkManager);
    // getDataUserService = GetDataUserService(networkManager);
    //  getUserDataFun();
    getListDataVm();
  }

  @action
  void changeLoading() {
    isLoading = !isLoading;
  }

  @action
  Future<List<GetListUserDataModel>?> getListDataVm() async {
    changeLoading();
    listData = await getListExample.getListData();
    changeLoading();
    return listData;
  }
}
