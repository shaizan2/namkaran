
class BoyC {
    String? id;
    String? categoryId;
    String? name;
    String? meaning;
    String? gender;

    BoyC({this.id, this.categoryId, this.name, this.meaning, this.gender});

    BoyC.fromJson(Map<String, dynamic> json) {
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
    static List<BoyC>ofchris(List ofchr){
      return ofchr.map((e)=>BoyC.fromJson(e)).toList();
      
    }
}