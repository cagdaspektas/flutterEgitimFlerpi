// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_list_vm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GetListUserViewModel on _GetListUserViewModelBase, Store {
  late final _$listDataAtom =
      Atom(name: '_GetListUserViewModelBase.listData', context: context);

  @override
  List<GetListUserDataModel>? get listData {
    _$listDataAtom.reportRead();
    return super.listData;
  }

  @override
  set listData(List<GetListUserDataModel>? value) {
    _$listDataAtom.reportWrite(value, super.listData, () {
      super.listData = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_GetListUserViewModelBase.isLoading', context: context);

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

  late final _$getListDataVmAsyncAction =
      AsyncAction('_GetListUserViewModelBase.getListDataVm', context: context);

  @override
  Future<List<GetListUserDataModel>?> getListDataVm() {
    return _$getListDataVmAsyncAction.run(() => super.getListDataVm());
  }

  late final _$_GetListUserViewModelBaseActionController =
      ActionController(name: '_GetListUserViewModelBase', context: context);

  @override
  void changeLoading() {
    final _$actionInfo = _$_GetListUserViewModelBaseActionController
        .startAction(name: '_GetListUserViewModelBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_GetListUserViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listData: ${listData},
isLoading: ${isLoading}
    ''';
  }
}
