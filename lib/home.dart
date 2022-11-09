import 'package:all_in_one/homeProvider.dart';
import 'package:all_in_one/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  homeProvider? homeProviderfalse;
  homeProvider? homeProvidertrue;

  @override
  Widget build(BuildContext context) {
    homeProviderfalse = Provider.of<homeProvider>(context, listen: false);
    homeProvidertrue = Provider.of<homeProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white10,
        appBar: AppBar(
          backgroundColor: Colors.black12,
          elevation: 0,
          title: Text("All In One App"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text("Ecommerce",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 185,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Provider.of<homeProvider>(context).dataone.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Provider.of<homeProvider>(context, listen: false)
                                  .data = Model(
                                url: homeProviderfalse!.dataone[index].url,
                              );

                              Navigator.pushNamed(context, '/detail');
                            },
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                      Provider.of<homeProvider>(context)
                                          .dataone[index]
                                          .photo as String)),
                            ),
                          ),
                          //SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Container(
                                height: 30,
                                width: 100,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "${Provider.of<homeProvider>(context, listen: false).dataone[index].name}",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text("Food Delivery ",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Provider.of<homeProvider>(context).datatwo.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Provider.of<homeProvider>(context, listen: false)
                                  .data = Model(
                                url: homeProviderfalse!.datatwo[index].url,
                              );

                              Navigator.pushNamed(context, '/detail');
                            },
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                      Provider.of<homeProvider>(context)
                                          .datatwo[index]
                                          .photo as String)),
                            ),
                          ),
                          //SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Container(
                                height: 30,
                                width: 100,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "${Provider.of<homeProvider>(context, listen: false).datatwo[index].name}",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text("Recharge",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:
                      Provider.of<homeProvider>(context).datathree.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Provider.of<homeProvider>(context, listen: false)
                                  .data = Model(
                                url: homeProviderfalse!.datathree[index].url,
                              );

                              Navigator.pushNamed(context, '/detail');
                            },
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                      Provider.of<homeProvider>(context)
                                          .datathree[index]
                                          .photo as String)),
                            ),
                          ),
                          //SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Container(
                                height: 30,
                                width: 100,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "${Provider.of<homeProvider>(context, listen: false).datathree[index].name}",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
