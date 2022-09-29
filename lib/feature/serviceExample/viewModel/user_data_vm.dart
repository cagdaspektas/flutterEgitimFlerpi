import 'package:flutter/material.dart';
import 'package:flutter_egitim/core/base/base_view_model.dart';
import 'package:flutter_egitim/feature/serviceExample/service/user_data_service.dart';
import 'package:mobx/mobx.dart';
import 'package:vexana/vexana.dart';

import '../model/user_data_model.dart';
part 'user_data_vm.g.dart';

class UserDataViewModel = _UserDataViewModelBase with _$UserDataViewModel;

abstract class _UserDataViewModelBase with Store, BaseViewModel {
  @observable
  IResponseModel<GetUserDataModel?>? getUserDataModel;

  late IGetDataUserService getDataUserService;

  @override
  void setContext(BuildContext context) => myContext = context;
  @override
  init() {
    getDataUserService = GetDataUserService(networkManager);
    getUserDataFun();
  }

  @action
  Future<IResponseModel<GetUserDataModel?>?> getUserDataFun() async {
    getUserDataModel = await getDataUserService.getUserData();
    return getUserDataModel;
  }
}
