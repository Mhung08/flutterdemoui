import 'package:flutter/material.dart';
import '/flutter_sticky_header.dart';

import '../common.dart';
import 'model/job.dart';

class ListExample extends StatelessWidget {
  const ListExample({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> sliversData = [];
    sliversData.add(_StickyHeaderList(title: "Thứ 3 - 21/03/2021"));
    sliversData.add(_StickyHeaderList(title: "Thứ 4 - 21/03/2021"));
    sliversData.add(_StickyHeaderList(title: "Thứ 5 - 21/03/2021"));
    sliversData.add(_StickyHeaderList(title: "Thứ 6 - 21/03/2021"));
    sliversData.add(_StickyHeaderList(title: "Thứ 7 - 21/03/2021"));

    return AppScaffold(
      title: 'List Example',
      slivers: sliversData,
    );
  }
}

class _StickyHeaderList extends StatelessWidget {
  const _StickyHeaderList({
    Key? key,
    this.title,
  }) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return SliverStickyHeader(
      header: Header(title: title),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, i) => JobItem(),
          childCount: 3,
        ),
      ),
    );
  }
}

class JobItem extends StatelessWidget {
  const JobItem({Key? key}) : super(key: key);

  // final Job data;

  @override
  Widget build(BuildContext context) {
      return Padding(
         padding: EdgeInsets.all(10),
         child: Container(
            decoration: const BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 12, left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Bảo trì đường hầm"),
                              Text("100299")
                            ],
                          ),
                          Spacer(),
                          Container(
                            padding: EdgeInsets.only(top: 5, bottom: 5, left: 8, right: 8),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(30)
                            ),
                            child: Wrap(
                              spacing: 10,
                              children: [
                                Text("."),
                                Text("Mới"),
                                Text("<")
                              ],
                            ),
                          )
                        ],
                      ),
                       Padding(
                           padding: EdgeInsets.only(top: 9, bottom: 6),
                           child: Divider(height: 1),
                       ),
                      const ListTile(
                        leading: CircleAvatar(backgroundImage: AssetImage("res/images/ic_language.svg")),
                        title: Text("Tầng B1"),
                      ),
                      const ListTile(
                        leading: CircleAvatar(backgroundImage: AssetImage("res/images/ic_language.svg")),
                        title: Text("18:30, 09/09/2022"),
                      ),
                      const ListTile(
                        leading: CircleAvatar(backgroundImage: AssetImage("res/images/ic_language.svg")),
                        title: Text("Bộ phận kỹ thuật"),
                      ),
                      const ListTile(
                        leading: CircleAvatar(backgroundImage: AssetImage("res/images/ic_language.svg")),
                        title: Text("Định kỳ"),
                      ),
                    ],
                  ),
                )
                ,
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16, top: 12, bottom: 12),
                        child: Container(
                          padding: const EdgeInsets.only(top: 5, bottom: 5, left: 7, right: 7),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(207, 70, 39, 1),
                              borderRadius: BorderRadius.circular(4)
                          ),
                          child: Text("Quá 20h00"),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10, right: 16),
                        child: Container(
                          padding: const EdgeInsets.only(top: 5, bottom: 5, right: 10, left: 10),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(4)
                          ),
                          child: Text('Cao'),
                        ),
                      )

                    ],
                  ),
                )
              ],
            ),
          )
      ); 
        
  }
  
}