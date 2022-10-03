// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_vm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserDataViewModel on _UserDataViewModelBase, Store {
  late final _$getUserDataModelAtom =
      Atom(name: '_UserDataViewModelBase.getUserDataModel', context: context);

  @override
  IResponseModel<GetUserDataModel?>? get getUserDataModel {
    _$getUserDataModelAtom.reportRead();
    return super.getUserDataModel;
  }

  @override
  set getUserDataModel(IResponseModel<GetUserDataModel?>? value) {
    _$getUserDataModelAtom.reportWrite(value, super.getUserDataModel, () {
      super.getUserDataModel = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_UserDataViewModelBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$getUserDataFunAsyncAction =
      AsyncAction('_UserDataViewModelBase.getUserDataFun', context: context);

  @override
  Future<IResponseModel<GetUserDataModel?>?> getUserDataFun() {
    return _$getUserDataFunAsyncAction.run(() => super.getUserDataFun());
  }

  late final _$_UserDataViewModelBaseActionController =
      ActionController(name: '_UserDataViewModelBase', context: context);

  @override
  void changeLoading() {
    final _$actionInfo = _$_UserDataViewModelBaseActionController.startAction(
        name: '_UserDataViewModelBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_UserDataViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
getUserDataModel: ${getUserDataModel},
isLoading: ${isLoading}
    ''';
  }
}
