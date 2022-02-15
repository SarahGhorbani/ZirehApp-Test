class FoodModel {
  FoodModel(
    this.name,
    this.status,
    this.txtCodColor,
    this.bgCodColor,
  );

  FoodModel.all(this.name, this.category, this.recipe, this.meal, this.isLocal,
      this.province);

  late String name;
  late String status = 'در حال برسی';
  late String img;
  late String category;

  late String recipe;
  late String meal;
  late bool isLocal;
  late String province;
  late int txtCodColor = 0xFFFFC312;
  late int bgCodColor = 0xFFFFF9E7;
}
