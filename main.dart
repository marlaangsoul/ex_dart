// =============================================
//5.0 Conclusions
// 필수라고 생각하는 Dart의 기본기.
// Dart는 객체 지향 프로그래밍이기 떄문에 클래스를 중점으로 배웠고
// 플러터 역시 객체지향 프로그래밍 프레임워크이다.
// 

// =============================================

void main() {
  
//   // =============================================
// //4.9 Mixins  (void main 바깥에 있음).
// // Mixin 플러터에서 자주 사용 되는 개념
// // 생성자가 없는 클래스
// // 전 강의에서 Human은 생성자가 있었다.
// // 그래서 Player를 만들때는 super를 써야했다.
// // 클래스에 프로퍼티를 추가하거나 생성할때 사용.

// class Human {
//   final String name;
//   Human({required this.name}); // 생성자 함수
//   void sayHello() {
//     print("$name car is rolls_royce Spectre");
//   }
// }

// class Strong {
//   final double strenghtLevel = 1500.99;
//   //Strong은 클래스고 어떤 생성자도 가지고 있지 않다.
// }

// class QuickRunner {
//   void runQuick() {
//     print("ruuuuun!");
//   }
// }

// class Tall{
//   final double height = 1.99;
// }

// enum Team { red, blue }

// // with로 Quick와 Strong 클래스에 있는 프로퍼티와 메소드를
// // Player에 담아 줄것이다.
// // 요약 : 다른 클래스의 프로퍼티와 메소드를 그냥 긁어 오는 것.
// // 이떄 상속 받을 필요가 없어서 쉽게 사용.
// // 앞으로 플러터나 플로터 플로그인에 사용할때 자주 사용.


// //Mixin의 핵심은 여러 클래스에 재사용이 가능하다는 점.
// class Player with Strong, QuickRunner, Tall {
//   final Team team;

//   Player({
//     required this.team,
//     required String name,
//   }) : super(name: name);

//   @override
//   void sayHello() {
//     super.sayHello();
//     print('and my car is ${team}');
//   }
// }

// // 재사용이 가능하다.
// class Horse with Strong, QuickRunner {}

// class Kid with QuickRunner {}

// // extend를 하게 되면 확장(상속)한 그 클래스는 부모 클래스가 되고
// // 자식 클래스는 부모 클래스를 super를 통해 접근할수 있고
// // 그 순간 부모 클래스의 인스턴스가 된다.
// // Mixin은 다르다. with를 쓰게 되면
// // 역할은 단순히 Mixin 내부의 프로퍼티와 메소드를 가져오는 것뿐.
// // 부모 클래스가 되거나 하지 않는다. 그저 뺏어서 사용 하는 것 뿐.
// // Mixin의 조건은 생성자가 없는 클래스여야 한다는 것. 

// // =============================================
  
//   var player = Player(
//   team: Team.red,
//   );
  
//   player.runQuick();
  
  
//   // =============================================
// //4.8 Inheritance (void main 바깥에 있음).
// // 상속. 플러터에서는 가끔씩만 사용 되지만
// // 꼭 알아야 하는 중요한 개념.
// class Human{
//   final String name;
//   Human({required this.name});// 생성자 함수
//   void sayHello(){
//     print("$name car is rolls_royce Spectre");
//   }
// }

// enum Team{red, blue}

// class Player extends Human{
//   // Human 가 가지고 있는 모든 것을 가지게 한다.
//   final Team team;

//     // 생성자 함수에도 위에 Human클래스의 메소드를 가져온다.
//     // namde argument 를 사용하여
//     // Player의 생성자 함수를 만들자.
//   Player({
//     required this.team,
//     //Human클래스에서 String타입인 name 이라는 필수요소를 받겠다.
//     required String name,
//   }) : super(name: name); //super 클래스는 확장한 부모 클래스를 의미하는 것.
//   // name을 super 생성자에 전달해주면 됨.
//   // super라는 키워드를 통해서(확장을 한) 부모 클래스와 상호작용
//   // 할수 있게 도와줌
//   // super에 name을 전달해주면 이 클래스를 전달한 name과 함께 호출됨

//   @override
//   // Human에서 온 sayHello를 우리가 직접 만든
//   // 메소드로 override(대체) 하는 것
//   void sayHello(){
//     super.sayHello();
//     print('and my car is ${team}');
//   }
//   // 우린 지금 Human에 있는 걸들을 가져와서 사용하고 있음.
//   // super의 힘. 상속(확장)한 부모 클래스의 프로퍼티에 접근하거나
//   // 메소드를 호출할수 있게 해줌.
// }
//   // 여기서 가장 중요한 것은 확장한 부모 클래스가 생성자를 포함하고 있는데
//   // 그 클래스를 다른 어떤 곳에서 사용하려면 필요한 값을 전달해야하고
//   // 그 부모 클래스의 생성자를 호출해줘야한다.
//   // 자바 C언어, 자바 스크립트등 이러한 형태로 상속을 한다.

// // =============================================

//   var player = Player(
//     team: Team.red,
//     name:'lbh',
//   );
//   player.sayHello();

//   // =============================================
// //4.7 Abstract Classes (void main 바깥에 있음).
// // 추상화 클래스는 다른 클래스 들이 직접 구현해야 하는
// // 메소드들을 모아 놓은 일종의 청사진이라고 볼수 있다.
// // 다른 클래스들이 어떤 청사진을 가지고 있어야하는지
// // 정의해주는 역할
// abstract class Human {
//   void walk();
// }
// // 추상화 클래스에 좋은 점.
// // 수많은 청사진에 메소드의 이름과 반환타입만 정해서
// // 정의 할수 있다.
// // 플러터에서 자주 사용하지는 않지만 유용하다.
// // ex) walk(가로 안에) 파라미터를 설정할수 있고,
// // 다른 클래스에서 extedns(상속, 확장) 할수 있다.

// enum Team {red, blue}
// enum XPLevel {beginner, medium, master}

// class Player extends Human {
//   String name;
//   XPLevel xp;

//   Team team;
//    Player({
//     required this.name,
//     required this.xp,
//     required this.team,
//   });

//   void walk{
//     print('My car is rolls_royce Spectre');
//   }

//     void sayHello() {
//     print("Hi my name is $name");
//   }
// }

// class Coach extends Human{
//   void walk(){
//     print('My wife car is rolls_royce Spectre');
//   }
// }
// // 추상화 클래스를 Extends 받았을 때는 특정 메소드
// // 구현을 강제한다. 그래서 Player와 Coach 클래스가
// // walk 메소드를 가지고 있다고 확신할수 있다.
// // 하지만 Coach클래스에서 walk 메소드를 보면 알수 있듯이,
// // 다른 방식으로 구현이 가능하다.

// // =============================================

//   // =============================================
// //4.6 Enums (void main 바깥에 있음).
// // 이눔은 플러터에서 많이 사용하고,
// // 우리가 바보같은 실수를 하지 않게 도와준다.
// enum Team {red, blue}
// enum XPLevel {beginner, medium, master}
// // 텍스트 형태로 쓰는 것이 아니다.
// // 문자열이든 변수명이든 사오간 없다.
// class Player {
//   String name;
//   XPLevel xp;
//   //String team;
//   //을 아래와 같이 바꾼다.
//   Team team;
//    Player({
//     required this.name,
//     required this.xp,
//     required this.team,
//   });
//     void sayHello() {
//     print("Hi my name is $name");
//   }
// }
// // =============================================

//     var lbh = Player(name: 'lbh', xp: XPLevel.medium, team: Team.red);
//   lbh.name = 'las';
//   lbh.xp = XPLevel.medium;
//   lbh.team = Team.red;

//   var lbh = Player(name: 'lbh', xp: XPLevel.medium, team: Team.red)
//   ..name = 'las'
//   ..xp = XPLevel.medium
//   ..team = Team.red;

//   var lbh = Player(name: 'lbh', xp: XPLevel.medium, team: Team.blue);
//   var potato = lbh
//   ..name = 'las'
//   ..xp = XPLevel.medium
//   ..team = Team.blue
//   ..sayHello();

  // =============================================
// //4.5 Cascade Notation  (void main 바깥에 있음).

// class Player {
//   String name;
//   int xp;
//   String team;

//   // api 에서 받아온 데이터를 Player class로 전환해보자.
//   // 많은 플러터 앱에서 사용하는 방법.
//   // 'fromJson' 이라는 named constructor를 만들자.

//    Player({
//     required this.name,
//     required this.xp,
//     required this.team,
//   });

//   void sayHello() {
//     print("Hi my name is $name");
//   }
// }

// // =============================================

//   var lbh = Player(name: 'lbh', xp: 1200, team: 'red');
//   lbh.name = 'las';
//   lbh.xp = 1200000;
//   lbh.team = 'red';

//   // 위와 같이 lbh를 여러번 쓰는 반복적인 행위를 할 필요없이
//   // Cascade operator 를 쓰면 간단하다.

//   //아래 예시.
//   var lbh = Player(name: 'lbh', xp: 1200, team: 'red')
//   ..name = 'las'
//   ..xp = 1200000
//   ..team = 'red';  // 앞에 .. 중 앞에 . 이 위의 var 뒤에 쓴 lbh를 뜻한다.

//   //위와 아래는 같은 역할이고, 같은 로직이다.
//   // 플로터에서 자주 사용 되는 것이다.

//   var lbh = Player(name: 'lbh', xp: 1200, team: 'red');
//   var potato = lbh
//   ..name = 'las'
//   ..xp = 1200000
//   ..team = 'red'
//   ..sayHello(); //이것도 가능

//   // =============================================
// //4.4 Recap  (void main 바깥에 있음).

// class Player {
//   final String name;
//   int xp; // 이렇게 동시에 선언해줄수도 있다.
//   String team;

//   // api 에서 받아온 데이터를 Player class로 전환해보자.
//   // 많은 플러터 앱에서 사용하는 방법.
//   // 'fromJson' 이라는 named constructor를 만들자.

//   Player.fromJson(Map<String, dynamic> playerJson)
//     : name = playerJson['name'], //playerJson Map 안에 있는 키가 'name'이라는 뜻
//       xp = playerJson['xp'],
//       team = playerJson['team'];
//   // 우리가 위에서 한 것은 단지 Player class의 생성과 초기화 작업 뿐.

//   void sayHello() {
//     print("Hi my name is $name");
//   }
// }

// // =============================================

//   var apiData = [
//     {
//       "name" : "lbh",
//       "team" : "red",
//       "xp" : 0,
//     },
//      {
//       "name" : "ksk",
//       "team" : "red",
//       "xp" : 0,
//     },
//      {
//       "name" : "boss",
//       "team" : "red",
//       "xp" : 0,
//     },
//   ];

//   apiData.forEach((playerJson){
//     var player = Player.fromJson(playerJson);
//     player.sayHello();
//   });

//   // =============================================
// //4.3 Named Constructors (void main 바깥에 있음).

// class Player {
//   final String name;
//   int xp, age; // 이렇게 동시에 선언해줄수도 있다.
//   String team;

//   Player({
//     required this.name,
//     required this.xp,
//     required this.team,
//     required this.age,
//   });
//   // Named constructor parameter 라고 불리운다.
//   //
//   Player.createBluePlayer({
//     required String name,
//     required int age,
//   }) : // 콜론을 통해 Player 클래스(위의 변수들)을 초기화 싵키는 것이다.
//   this.age = age,     // age는 어규먼트로 받은 age 값.
//   this.name = name,   // name도 어규먼트로 받은 age 값.
//   this.team = 'blue', // team은 개발자가 원하는 기본값
//   this.xp = 0;        // xp도 개발자가 원하는 기본값
//   // 이런 식으로 named constructor를 만들수 있다.
//   // 즉, 이건 Player를 초기화 하는 method이다.
//   // 하지만 보다시피 다른 이름을 가지고 있고, 필요에 따라서
//   // 다른 인자를 받게 할수도 있다.
//   Player.createRedPlayer({
//     required String name,
//     required int age,
//   }) : // 콜론을 통해 Player 클래스(위의 변수들)을 초기화 싵키는 것이다.
//   this.age = age,     // age는 어규먼트로 받은 age 값.
//   this.name = name,   // name도 어규먼트로 받은 age 값.
//   this.team = 'red', // team은 개발자가 원하는 기본값
//   this.xp = 0;

//   void sayHello() {
//     print("Hi my name is $name");
//   }
// }

// // =============================================

//   // 만약 각각 xp를 0로 초기화 시킨 red 팀과 blue 팀을
//   // 만들고 싶다면 어떻게 해야할까?
//   // 내가 사용자가 name 과 age 만 보내도록 한다면??
//   var bluePlayer = Player.createBluePlayer(
//     name : "lbh",
//     age : 12,
//   );
//   var redPlayer = Player.createRedPlayer(
//     name : "ksk",
//     age : 12,
//   );

  // =============================================
//4.2 Named Constructor Parameters (void main 바깥에 있음).
// Player가 team도 가지고 있다고 가정해보면,
// 어규먼트의 순서를 맞춰줘야 하는 이 전 강의의 방식은
// 금방 어려워질것이다.
// class Player {
//   final String name;
//   int xp;
//   String team;
//   int age;

//   Player({
//     required this.name,
//     required this.xp,
//     required this.team,
//     required this.age,
//   });

//   void sayHello() {
//     print("Hi my name is $name");
//   }
// }

// =============================================

//   var player = Player(
//     name : "lbh",
//     xp : 1500,
//     team : 'red',
//     age : 12,
//   );
//   player.sayHello();
//   var player2 = Player(
//     name : "ksk",
//     xp : 2500,
//     team : 'blue',
//     age : 12,
//   );
//   player2.sayHello();
//   // 너무 많은 positional argument가 서로 이웃해 있으면
//   // 혼란스러워 진다.
//   // 그래서 플러터는 전적으로 위와 같이 키와 벨류 값을 구별할 수
//   // 있게 코딩하는 방식이 많다.

  // =============================================
//4.1 Constructores (void main 바깥에 있음).
// 형태 1.
// class Player{
//   late final String name;
//   late int xp;
//   //constructor method(생성자 함수)
//   //constructor method의 이름은 클래스의 이름과 같아야 한다.
//   Player(String name, int xp){
//     this.name = name;
//     this.xp = xp;
//   }
//   void sayHello(){
//     print("Hi my name is $name");
//   }
// }

// 형태 2.
// constructor 코드를 작성하는 더 나은 방법은,
// 일단 late를 지우는 것이다.
// class Player2{
//   final String name;
//   int xp;
//   //constructor method(생성자 함수)
//   //constructor method의 이름은 클래스의 이름과 같아야 한다.

//   Player2(this.name, this.xp);
//   //Player1 의 생성자 메서드 코드보다 훨씬 간결.
//   //위에서 String, int를 선언했으니
//   //별도의 변수 선언 없이
//   //각각의 어규먼트를 그대로 받는다.
//   // 이때는 위치가 중요하다.
//
//   void sayHello(){
//     print("Hi my name is $name");
//   }
// }

// =============================================

//   var player = Player("lbh", 1500);
//   player.sayHello();
//   var player2 = Player("ksk", 2500);
//   player2.sayHello();

//   var player3 = Player2("lbh", 1500);
//   player3.sayHello();
//   //두번째 방식에서는 어규먼트 순서가 중요하다.
//   var player4 = Player2("ksk", 2500);
//   player4.sayHello();

  //4.0 Your First Dart Class (void main 바깥에 있음).
// Dart에서는 클래스가 가장 중요.

// class Player{
//   // 클래스를 생성할때는 타입을 꼭 명시해주어야한다.
//   String name = 'lbh';
//   int xp = 1500;
//   // xp를 바꾸지 못하게 하고 싶으면,
//   // final int xp = 1500; 으로 하면 된다.
//   void sayHello(){
//     print("Hi my name is $name");
//     // 일반적으로 $name에 this가 붙어서
//     // ${this.name}으로 사용 되지만, Dart에서는 사용 되지
//     // 않는게 권고 되고 있다.
//   }
// }
// =============================================
//   var player = Player('lbh', 1500);
//   여기서 lbh와 1500을 argument(아규먼트)라고 한다.
//   // 이렇게 호출시 Player 인스턴스가 하나 생성된다.
//   // var playetr = new Player(); 로 써도 되지만
//   // 굳이 그럴 필요는 없다.
//   player.name; //.(점)을 통해 name이나xp에 접근 할수 있다.
//   print(player.name);
//   player.name = 'lalalala';
//   print(player.name);
//   player.sayHello();

  // =============================================
//3.5 Typedef (void main 바깥에 있음).
//typedef는 자료형에 alias를 붙일 수 있게 해준다.
//alias는 별칭 as 같은거.
// typedef ListOfInts = List<int>;

// ListOfInts reverseListOfnumbers(ListOfInts list){
//   var reversed = list.reversed;
//   return reversed.toList();
// }
// =============================================

//   print(reverseListOfnumbers([1,2,3]));

  // =============================================
//3.4 QQ Operator(void main 바깥에 있음).
// ??
// 소문자를 대문자로 바꿔주는 함수
// name 값이 null 일때 방법 1.
// String capitalizeName(String? name) =>
//   name != null ? name.toUpperCase() : 'ANOW';
// name 값이 null이 아닐때 방법 2.
// String capitalizeName2(String? name) =>
//   name?.toUpperCase() ?? 'ANOW';
// 설명
// left ?? right
// 만약 좌항이 null이면 우항을 리턴
// 만약 좌항이 null이 아니면 좌항을 리턴

// =============================================

//   capitalizeName('lbh');
//   capitalizeName(null); // 이걸 사용할때 String에 ? 처리
//   capitalizeName2('lbh');
//   capitalizeName2(null);

// ?=
//   String? name;
//   name ??= 'lbh';
//   print(name);
//   ??= 만약 name이 null 값이라면, name 값은 'lbh'로 해줘

  // =============================================
//3.3 Optional Positional Parameters(void main 바깥에 있음).
// Positional Parameter 란
// sayHello(1,2,3); 와 같이 각각 name이면 name, 순서면 순서에 맞게
// 위치를 잡아서 사용하는 것
// Optional Parameters
// String sayHello(
//   String name,
//   int age,
//   [String? country = 'korea']
// ) =>
//     'Hello $name, you are $age, and you com frome $country';
// 옵션널 파라메터는 위의 함수의 파라메터 중 하나의 값에
// String이 ?null 값일수도 있어, 이럴때는 String? contry를
// 'korea'라고 설정해.
// 형태로 null 값이 될 수 있는 값에 기본값을 설정해 놓는 방식

// =============================================

//   var result = sayHello('bh', 12);
//   print(result);

  // =============================================
//3.1 Named Parameters(void main 바깥에 있음).
//플러터에서 자주 사용 되는 개념
// String sayHello(String name, int age, String country) {
//   return 'Hello $name, you are $age, and you com frome $country';
// }

// String sayHello2({required String name, required int age, required String country}) {
//   return 'Hello $name, you are $age, and you com frome $country';
// }
// 이때 에러가 발생.=> 만약에 age나 name이나 country중에 값을 안주면 어쩔거야?
// 여기서 두가지 방법이 있음.
// 1번은 값을 직접 할당해 놓는 것.(default값 설정)
//  => 이것이 바로 named argument
// ex) String sayHello2({String name = 'hoho',  int age = 2,  String country ='korea'})
// 2번은 required modifier
// ex) String sayHello2({required String name, required int age, required String country})

// =============================================

//   print(sayHello(
//     'hoho',
//     12,
//     'gugu',
//   ));
//   // 일반적으로 이렇게 구현하면 펑션을 사용할때
//   //하나하나 순서에 맞춰서 입력해줘야 한다.

//   // 아래는 named agument 사용법.
//   print(sayHello2(
//     age: 12,
//     country: 'tutu',
//     name: 'ToTo',
//   ));

  // =============================================
//3.0 function(void main 바깥에 있음).
// void sayHello(String name){
//   //parameter 타입은 String, parameter 이름은 name
//   print('안녕? $name 좋은 하루야~');

// //sayHello라는 펑션을 만들었다.
// //그런데 void라는 함수는 아무것도 return하지 않는다는 뜻.
// //void sayHello라는 펑션은 부가적인 효과만 있고,
// //아무것도 return 하지 않는다.
// }

// String sayHello2(String name){
//   //parameter 타입은 String, parameter 이름은 name
//   return '안녕? $name 좋은 하루야~';

// //sayHello라는 펑션을 만들었다.
// //void 를 String으로 바꾸면 String으로 리턴해준다는 의미.
// }

// //한줄짜리 펑션일때는아래와 같이 사용해도 된다.
// //fat arrow syntax => 곧바로 리턴하는 것과 같다.
// String sayHello3(String name)=>'안녕? $name 좋은 하루야~';
//   //parameter 타입은 String, parameter 이름은 name

// num plus(num a, num b) => a+b;
// =============================================

  //print(sayHello('bobo'));
  //위에는 void로 리턴 값이없기 때문에 에러가 뜬다.
//   print(sayHello2('bobo'));
//   print(sayHello3('popo'));
//   print(plus(4, 5));

  //2.5 Sets
  //set에 속한 모든 아이템들은 유니크하다.
  //set은 sequence(순서가 있음)이다.
  //List와 같지만 모든 요소가 유니크하다.
//   var numbers = {1, 2, 3, 4, 5};
//   Set<String> numbers2 = {
//     'a',
//     's',
//     'd',
//     'f',
//     'g',
//     'h',
//   };

//   numbers.add(2);
//   numbers.add(2);
//   numbers.add(2);
//   numbers.add(2);
//   print(numbers);
//   print(numbers2);

  //2.4 Maps

//   var bh = {
//     'name' : 'bh',
//     'xp' : 9.99,
//     'superPower' : true,
//   };
//   print(bh);

//   Map<int, bool> player = {
//     1:true,
//     2:false,
//     3:true,
//   };
//   print(player);

//    Map<List<int>, bool> player2 = {
//     [1,3,5,7] :true,
//     [2,4,6,8] :false,
//   };
//   print(player2);

//    List<Map<String, Object>> player3 = [
//      {
//        'name' : 'tt',
//        'age' : 12.33,
//      },
//      {
//        'name' : 'yy',
//        'age' : 112.33,
//      },
//    ];
//   // map를 많이 사용하기 보다는 클래스를 사용하는 것을 추천

//   print(player3);

  //2.3 Collection For
  //list에 특정 데이터를 넣을때 데이터 값을
  //변경해서 넣을 수 있다.

//   var oldF = ['nini', 'hoho'];
//   var newF = [
//     'lele',
//     'rara',
//     'dada',
//     for (var friendName in oldF) "GoodGood $friendName",
//   ];
//   print(newF);

  //2.2 Stirng interpolation
  //String interpolation은 text에 변수를 추가하는 것.
//   var name = 'rolls_royce Spectre';
//   var buyYears = 5;
//   var text = '내가 살 자동차는 ${name + '(스펙터)'} 이다. 인도 받는 년도는 ${buyYears + 2} 년 후이다.';
//   print(text);
  //$ 뒤에 변수를 사용해주면 된다.
  //변수 데이터 값이 이미 들어 있을때 사용 하는 방법.

  //2.1 Lists
//   var numbers = [1, 2, 3, 4];
//   List<int> numbers2 = [1, 2, 3, 4];

//   print(numbers);
//   print(numbers2);

//   numbers.add(1);

//   print(numbers);
//   print(numbers2.last);
//   print(numbers.first);

//   //collection if
//   var giveMeFive = true;
//   var numbersIf = [
//     1,
//     2,
//     3,
//     4,
//     if (giveMeFive) 5, // 만약 giveMeFive가
//     //ture면 리스트에 5를 넣어.
//   ];
//   print(numbersIf);

  //2,0 Basic data types
  //기초적인 데이터 타입
//   String name = 'bb';

//   bool alive = true;
//   int age = 12;
//   double money = 92.99;

  //int와 double은 num 클래스를 상속받아서
  //사용된다는 것.
  //.으로 메소드나 펑션을 참조 없이
  //사용할수 있다.
//   num x = 9;
//   x = 1.1;

  //1.7 Recap
  //복습

  //1.6 Constant Variables
  //const 상수. js와 다르다.
  //dart에 final과 비슷.
  //dart에서 const는
  //compile-time constant를 만들어준다.
  //가장 중요한 것은 const는 compile-time에
  //알고 있는 값이어야 한다는 것이다.
  //const는 컴파일할때 알고 있어야 하는 값.
  //어떤 값인지 모르고, 사용자가 입력해야 되는
  //값이라면 final이나 var
  //앱을 컴파일해서 앱스토어에 올라가기 전에
  //이미 알고 있는 값을 다룰때 사용
//   const max_allowed_price =120;

  //1.5 late Variables
  // late 는 초기 데이터 없이
  // 변수를 선언할수 있게 해준다.
//   late final String name;
//   name = 'hh';
  // flutter에서 API와 작업 할떄 많이 사용.
  //

  //1.4 Final Variables
  //수정이 불가능한 변수 js의 const
//   final name = 'hh';
//   final Stirng = 'hg'; // 가능

  //1.3. nullable variables
  //개발자가 null값을 참조할수 없도록 하는 것.
//   String? hh = 'bh';
//   hh = null;
//   hh?.isNotEmpty;
//   if(hh != null){
//     hh.isEmpty;
//   }

  //1.2 dynamic  type
  // dynamic 은 정말 필요할 때만 쓰는 것.
//   dynamic name;
//   name = 'mar';
//   name = 12;
//   name = true;
//   print(name);

//   if(dynamic is Stirng){
//     name. .. // 여러 함수를 보여준다.
//   }

//   var name;
//   name = 'mar';
//   name = 12;
//   name = true;
//   print(name);

  // 1.1 변수
  //String name = 'bh';
  //name 이 string 이라는 것을 알고 있다.
  //name = '1';

  // 관습적 지역변수나 매개 변수에서는 var 사용.
  // 클래스에서 변수나 property를 선언할때에는 타입을 지정

  // 1.0 hello dart
  //   print('hello dart');

//   for (int i = 0; i < 5; i++) {
//     print('hello ${i + 1}');
//   }
}
