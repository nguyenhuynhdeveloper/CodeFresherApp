

class DefinedConfession {
  int ? id ;
  String ? title;
  String ? detail;
  DefinedConfession(int id,String title,String detail){
    this.id = id;
    this.title = title;
    this.detail = detail;
  }
  @override
  String toString() {
    // TODO: implement toString
    return '${this.detail}, ${this.detail},${this.id}';
  }
}