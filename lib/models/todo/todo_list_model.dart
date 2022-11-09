class TodoList {
  final int listId;
  final String listName;
  final Map<String, dynamic> todoName;

  const TodoList({
    required this.listId,
    required this.listName,
    required this.todoName,
  });

  factory TodoList.fromJson(Map<String, dynamic> json) {
    return TodoList(
      listId: json['listId'],
      listName: json['listName'],
      todoName: json['todoList'],
    );
  }
}

var todoList = [
  {
    'listId': 1,
    'listName': '学校',
    'todoList': {
      'todoId': 1,
      'todoName': '課題提出',
      'noticeDate': '2022-11-08 18:00',
      'checkFlg': true
    },
  },
  {
    'listId': 1,
    'listName': '学校',
    'todoList': {
      'todoId': 1,
      'todoName': '課題提出',
      'noticeDate': '2022-11-08 18:00',
      'checkFlg': true
    },
  },
  {
    'listId': 1,
    'listName': '学校',
    'todoList': {
      'todoId': 1,
      'todoName': '課題提出',
      'noticeDate': '2022-11-08 18:00',
      'checkFlg': true
    },
  },
  {
    'listId': 1,
    'listName': '学校',
    'todoList': {
      'todoId': 1,
      'todoName': '課題提出',
      'noticeDate': '2022-11-08 18:00',
      'checkFlg': true
    },
  },
];
