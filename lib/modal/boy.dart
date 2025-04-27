
class Boy {
    String? id;
    String? categoryId;
    String? name;
    String? meaning;
    String? gender;

    Boy({this.id, this.categoryId, this.name, this.meaning, this.gender});

    Boy.fromJson(Map<String, dynamic> json) {
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
  static List<Boy>ofboy(List ofdata){
    return ofdata.map((e)=>Boy.fromJson(e)).toList();
  }
}