// =============================================
//3.5 Typedef (void main 바깥에 있음).


// =============================================

void main() {
  
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
