import 'package:shopping_app/src/view/dashboard/model.dart';

class CategoryBloc {
  List<CategoryModel> category = [
    CategoryModel({
      "categoryId": 0,
      "categoryName": "Beauty",
      "img":
          "https://www.belfasttelegraph.co.uk/migration_catalog/07951/29037417.ece/AUTOCROP/w1240h700/shutterstock_108948605"
    }),
    CategoryModel({
      "categoryId": 1,
      "categoryName": "Video Games",
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRZtZjj8KNWmTQn3fQSA5SDr7w3Ld_pZR2Qyg&usqp=CAU"
    }),
    CategoryModel({
      "categoryId": 2,
      "categoryName": "Electronics",
      "img":
          "https://www.dqindia.com/wp-content/uploads/2016/10/electronics.jpg"
    }),
    CategoryModel({
      "categoryId": 3,
      "categoryName": "Toys & Games",
      "img":
          "https://i2-prod.mirror.co.uk/incoming/article4798577.ece/ALTERNATES/s1200b/amazon-2.jpg"
    }),
    CategoryModel({
      "categoryId": 4,
      "categoryName": "Fitness",
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTyB8Vwgiezwh21LXeHfw1YX51ssNC238sFDg&usqp=CAU"
    }),
    CategoryModel({
      "categoryId": 5,
      "categoryName": "Fashion",
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRPq6_MSie9mcbN3ezY-wp4tQ1dMSnzbBLF-A&usqp=CAU"
    }),
  ];
  CategoryBloc();
}

final categoryBloc = CategoryBloc();
