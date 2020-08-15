import 'package:flutter/material.dart';
import 'package:shopping_app/src/view/dashboard/categoryBloc.dart';

class CategoryListWidget extends StatefulWidget {
  @override
  _CategoryListWidgetState createState() => _CategoryListWidgetState();
}

class _CategoryListWidgetState extends State<CategoryListWidget> {
  goToItemList(int categoryId) {
    Navigator.pushNamed(context, '/items', arguments: categoryId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Shopping App'),
        ),
        body: SafeArea(child: gridList(context)));
  }

  Widget gridList(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:
                (MediaQuery.of(context).orientation == Orientation.landscape)
                    ? 3
                    : 2,
            childAspectRatio:
                (MediaQuery.of(context).orientation == Orientation.landscape)
                    ? 1.5
                    : 1.25,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5),
        itemCount: categoryBloc.category.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              goToItemList(categoryBloc.category[index].categoryId);
            },
            child: Card(
              child: Stack(
                children: [
                  Image(
                    image: NetworkImage(categoryBloc.category[index].img),
                    fit: BoxFit.fill,
                  ),
                  Positioned.fill(
                      top: 85,
                      child: Container(
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            categoryBloc.category[index].categoryName,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ))
                ],
              ),
            ),
          );
        });
  }
}
