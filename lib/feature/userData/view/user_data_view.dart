/* import 'package:flutter/material.dart';

class UserDataView extends StatefulWidget {
  const UserDataView({Key? key, this.userId}) : super(key: key);
  final String? userId;

  @override
  State<UserDataView> createState() => _UserDataViewState();
}

class _UserDataViewState extends State<UserDataView> {
  @override
//sayfanın ilk açıldığında çalıştığı kısım
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  int sayi1 = 1;
  int sayi2 = 10;

  List listdata = ["1", "2", "3", ""];

  addList(int sayi) {
    listdata.add(sayi);
    setState(() {});
  }

  var hataMesaji = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Text("leading ben"),
        title: const Text("title"),
        centerTitle: true,
        actions: const [Text("action ben")],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [Text("row1"), Text("row2")]),
            SizedBox(
              height: 300,
              child: ListView.builder(
                itemCount: 16,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return const Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Card(
                      child: Text("dadwadwad"),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listdata.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(listdata[index].toString()),
                  );
                },
              ),
            ),
            hataMesaji.isEmpty ? const Text("dawdwada") : Text(hataMesaji),
            ElevatedButton(
                onPressed: () {
                  if (!listdata.contains(1)) {
                    addList(sayi1);
                  } else if (!listdata.contains(10)) {
                    addList(sayi2);
                  } else {
                    hataMesaji = "data eklenmedi";
                    setState(() {});
                  }

                  print("ben çalışıyorum");
                },
                child: const Text("butonum ben"))
          ],
        ),
      ),
    );
  }
}
 */