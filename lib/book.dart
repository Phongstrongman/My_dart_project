class Book {
  String _name;
  int year;
  // khai báo hàm khởi tạo
  Book(this._name, this.year);
  // khai báo các phương sao thức
  String get getName => _name;
  set setname(String name) {
    _name = name;
  }

  void showhello() {
    print('Xincahao $_name');
  }
}
