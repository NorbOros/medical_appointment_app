class Category {
  final String _categoryName;
  late bool _isSelected;

  Category({required String categoryName, required bool isSelected})
      : _categoryName = categoryName,
        _isSelected = isSelected;

  String get categoryName => _categoryName;
  bool get isSelected => _isSelected;
  
  void set isSelected(final bool isSelected) {
    _isSelected = isSelected;
  }
}
