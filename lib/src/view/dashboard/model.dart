class CategoryModel {
  String _categoryname;
  int _categoryId;
  String _img;

  CategoryModel(category) {
    _categoryId = category["categoryId"];
    _categoryname = category["categoryName"];
    _img = category["img"];
  }

  int get categoryId => _categoryId;
  String get categoryName => _categoryname;
  String get img => _img;
}

class CategoryList {
  List<CategoryModel> _categoryList;
  CategoryList();

  CategoryList.fromJson(List<Map<String, dynamic>> parsedJson) {
    List<CategoryModel> temp = [];
    for (var i = 0; i < parsedJson.length; i++) {
      CategoryModel cat = CategoryModel(parsedJson[i]);
      temp.add(cat);
    }
    _categoryList = temp;
  }

  List<CategoryModel> get categoryList => _categoryList;
}
