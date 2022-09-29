import 'package:flutter/material.dart';
import 'package:vexana/vexana.dart';

import '../constant/project_constant.dart';

abstract class BaseViewModel {
  late BuildContext myContext;

//  LocaleManager localeManager = LocaleManager.instance;
  // NavigationService get navigation => myContext.read<NavigationService>();
  INetworkManager get networkManager => ProjectConstants.instance.networkManager;

  void setContext(BuildContext context);
  void init();

  void addPostFrameCallBack(VoidCallback onComplete) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      onComplete();
    });
  }
}
