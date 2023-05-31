import 'dart:convert';
import 'package:bacaan_sholat/model/model_bacaan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;

class BacaanSholat extends StatefulWidget {
  const BacaanSholat({super.key});

  @override
  State<BacaanSholat> createState() => _BacaanSholatState();
}

class _BacaanSholatState extends State<BacaanSholat> {
  Future<List<ModelBacaan>> ReadJsonData() async {
    final jsonData =
        await rootBundle.rootBundle.loadString('assets/data/bacaanshalat.json');
    final list = json.decode(jsonData) as List<dynamic>;
    return list.map((e) => ModelBacaan.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(0),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background.png"),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: Icon(
                          Icons.arrow_back,
                          color: Color(0xff0e1446),
                        )),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(top: 40),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 159, 219, 252)),
                      height: 170,
                      width: MediaQuery.of(context).size.width,
                      child: Container(
                        margin: EdgeInsets.only(top: 4, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Bacaan Salat",
                              style: TextStyle(
                                  color: Color(0xff0e1446),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Bacaan Salat dari Iftitah sampai dengan Salam",
                              style: TextStyle(
                                  color: Color(0xff0e1446),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: ClipRRect(
                      child: Image.asset(
                        "assets/images/bacaan_shalat.png",
                        width: 140,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                  child: Container(
                child: FutureBuilder(
                  future: ReadJsonData(),
                  builder: (context, data) {
                    if (data.hasError) {
                      return Center(
                        child: Text("${data.error}"),
                      );
                    } else if (data.hasData) {
                      var items = data.data as List<ModelBacaan>;
                      return ListView.builder(
                        itemCount: items == null ? 0 : items.length,
                        itemBuilder: (context, index) {
                          return Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            elevation: 5,
                            margin: EdgeInsets.all(15),
                            child: Theme(
                              data: Theme.of(context)
                                  .copyWith(dividerColor: Colors.transparent),
                              child: ExpansionTile(
                                title: Text(
                                  items[index].name.toString(),
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                            child: Container(
                                          padding: EdgeInsets.only(bottom: 10),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 8, right: 8),
                                                child: Text(
                                                  items[index]
                                                      .arabic
                                                      .toString(),
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 8, right: 8),
                                                child: Text(
                                                  items[index].latin.toString(),
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontStyle:
                                                          FontStyle.italic),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 8, right: 8, top: 5),
                                                child: Text(
                                                  items[index]
                                                      .terjemahan
                                                      .toString(),
                                                  style:
                                                      TextStyle(fontSize: 12),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
              ))
            ],
          )),
    );
  }
}
