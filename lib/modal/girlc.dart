
class Girlc {
    String? id;
    String? categoryId;
    String? name;
    String? meaning;
    String? gender;

    Girlc({this.id, this.categoryId, this.name, this.meaning, this.gender});

    Girlc.fromJson(Map<String, dynamic> json) {
        id = json["id"];
        categoryId = json["category_id"];
        name = json["name"];
        meaning = json["meaning"];
        gender = json["gender"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["id"] = id;
        _data["category_id"] = categoryId;
        _data["name"] = name;
        _data["meaning"] = meaning;
        _data["gender"] = gender;
        return _data;
    }
    static List<Girlc>ofgrc(List ofgc){
      return ofgc.map((e)=>Girlc.fromJson(e)).toList();
    }
}