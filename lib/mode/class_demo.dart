class Person {
  String name;
  int age;

  Person(this.name, this.age);

  @override
  String toString() {
    return 'name:$name, age:$age';
  }
}

class Student extends Person {
  String _school;
  String city; //可选参数
  String country; //默认参数
  String name; //

  Student(this._school, String name, int age,
      {required this.city, this.country = 'China'})
      :
        name='$country.$city', // 初始化列表
        super(name, age);

}

