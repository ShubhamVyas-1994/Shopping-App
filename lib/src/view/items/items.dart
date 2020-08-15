import 'package:flutter/material.dart';
import 'package:shopping_app/src/view/items/itemsBloc.dart';
import 'package:shopping_app/src/view/items/model.dart';

class ItemListWidget extends StatefulWidget {
  int categoryId;
  ItemListWidget({Key key, this.categoryId}) : super(key: key);
  @override
  _ItemListWidgetState createState() => _ItemListWidgetState(categoryId);
}

class _ItemListWidgetState extends State<ItemListWidget> {
  final int _categoryId;
  _ItemListWidgetState(this._categoryId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Shopping App'),
        ),
        body: SafeArea(
            child: FutureBuilder(
          future: itemBloc.getItemList(_categoryId),
          builder: (context, AsyncSnapshot<List<ItemModel>> snapshot) {
            if (snapshot.hasData) {
              return listView(context, snapshot.data);
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        )));
  }

  Widget listView(BuildContext context, List<ItemModel> data) {
    return ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Card(
              color: Theme.of(context).primaryColor,
              child: Container(
                margin: EdgeInsets.only(right: 5),
                color: Colors.white,
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    LimitedBox(
                      maxHeight: 50,
                      maxWidth: 50,
                      child: Image(
                        fit: BoxFit.fill,
                        image: NetworkImage(data[index].imgUrl),
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data[index].itemName,
                              style: TextStyle(
                                  fontFamily: "Montserrat", fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ));
        });
  }
}
