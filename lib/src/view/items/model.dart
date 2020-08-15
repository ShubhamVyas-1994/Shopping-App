class ItemModel {
  int _itemId;
  int _price;
  int _categoryId;
  String _itemName;
  String _imgUrl;
  String _description;

  ItemModel(data) {
    _itemId = data["itemId"];
    _price = data["price"];
    _categoryId = data["categoryId"];
    _itemName = data["itemName"];
    _imgUrl = data["imgUrl"];
    _description = data["description"];
  }

  int get itemId => _itemId;
  int get price => _price;
  int get categoryId => _categoryId;
  String get itemName => _itemName;
  String get imgUrl => _imgUrl;
  String get description => _description;
}
