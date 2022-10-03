import 'package:flutter/material.dart';
import 'package:flutter_egitim/core/base/base_view.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../viewModel/get_list_vm.dart';

class GetListDataView extends StatelessWidget {
  const GetListDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<GetListUserViewModel>(
      model: GetListUserViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      builder: (BuildContext context, GetListUserViewModel viewModel) => Scaffold(
        body: Observer(builder: (_) {
          return viewModel.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: viewModel.listData?.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [Text(viewModel.listData?[index].title ?? 'gelemedim'), const Divider()],
                    );
                  },
                );
        }),
      ),
    );
  }
}
