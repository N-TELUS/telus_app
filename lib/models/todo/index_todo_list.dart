import 'package:dio/dio.dart';
import 'package:telus_app/models/todo/todo_list_model.dart';

class ProductService {
  final String todoListURL = 'http://localhost:8000/todo_list';
  final Dio dio = Dio();

  ProductService();

  Future<List<TodoList>> getProducts() async {
    late List<TodoList> todoList;
    try {
      final res = await dio.get(todoListURL);

      todoList = res.data['products']
          .map<TodoList>(
            (item) => TodoList.fromJson(item),
          )
          .toList();
    } on DioError catch (e) {
      todoList = [];
    }

    return todoList;
  }
}
