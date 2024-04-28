class Meal {
  final int id;
  final String title, imgURL;

  Meal({required this.id, required this.title, required this.imgURL});

//This class has an ID which allows us to get the Recipes and other info
//Such as title and Image URL

/*
Factory Constructor Meal.fromMap parses the decoded JSON data to get the 
values of the meal, and returns the Meal Object
*/

  factory Meal.fromMap(Map<String, dynamic> map) {
    //Meal object
    print('map meal test $map');
    return Meal(
        id: map['id'],
        title: map['title'],
        imgURL:
            "https://img.spoonacular.com/recipes/${map['id']}-556x370.${map['imageType']}");
  }
}
