
class Girlm {
    String? id;
    String? categoryId;
    String? name;
    String? meaning;
    String? gender;

    Girlm({this.id, this.categoryId, this.name, this.meaning, this.gender});

    Girlm.fromJson(Map<String, dynamic> json) {
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
    static List<Girlm>ofgi(List ofGirl){
      return ofGirl.map((e)=>Girlm.fromJson(e)).toList();
    }
}