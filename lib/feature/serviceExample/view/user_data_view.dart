import 'package:flutter/material.dart';
import 'package:flutter_egitim/core/base/base_view.dart';

import '../viewModel/user_data_vm.dart';

class UserDataView extends StatelessWidget {
  const UserDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<UserDataViewModel>(
        model: UserDataViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },
        builder: (BuildContext context, UserDataViewModel viewModel) => Scaffold(
              appBar: AppBar(),
              body: Column(
                children: [
                  /*   viewModel.getUserDataModel?.data?.data?.email != null
                      ? Text(viewModel.getUserDataModel!.data!.data!.email!)
                      : const SizedBox() */
                  Text(viewModel.getUserDataModel?.data?.data?.email ?? "gelemedim"),
                ],
              ),
            ));
  }
}
