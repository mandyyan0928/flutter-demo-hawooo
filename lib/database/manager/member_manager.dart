



import 'package:demo_hello_world/database/data/member.dart';

import '../database_helper.dart';

class MemberManager {
  final dbHelper = DatabaseHelper.instance;

  //Singleton 單例模式，確保一個類別只有一個實例
  MemberManager._privateConstructor();

  static final MemberManager instance = MemberManager._privateConstructor();

  //插入資料
  Future<int> insert(Member member) async {
    int result= await dbHelper.insert(member.toMap());
    print('--- insert 執行結束---' + result.toString());
    return result;
  }

  //查詢資料
  void query() async {
    final rows = await dbHelper.queryAllRows();
    print('查詢結果:');
    rows.forEach((row) => print(row));
    print('--- query 執行結束---');
  }
  void querySingle(String username) async {
    var columns = ["username", "password", "mobile"];
    final map = await dbHelper.query(columns, "username", [username]);
    print('查詢結果:');
    return Member().fromMap(map);
    print('--- query 執行結束---');
  }
  //更新資料
  void update(Member member) async {

    dbHelper.update(member.toMap());
    print('--- update 執行結束---');
  }

  //刪除資料
  void delete() async {
    final id = await dbHelper.queryRowCount();
    dbHelper.delete(id);
    print('--- delete 執行結束---');
  }
}
