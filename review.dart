dart Study

1.0 hello dart

print('hello dart');

for(int i = 0; i < 5; i ++ ){
print ('hello ${i+1}');
}

1.1 변수
String name = 'bh';
name 이 name = '1';

1.2 dynamic type;
dynmic name;
name = 'mar';
name = 12;
name = true;
print (name)

if(dynamic is String){
name을 string으로 인식 할경우..
}

1.3 nullable variables.
null값을 참조 할수 없도록 하는 것.
String? hh = 'bh';
이 경우 hh가 null 값이 될수도 있어~~ 라고이야기 하는 것.
bh = null;
bh?.inSnotEmpty; 가 가능.
if(bh != null){
hh.isEmpty;
}

1.4 Final Variables
수정 불가능한 변수로 js의 const 같은 형태

final name = 'bh';
final String = 'hh';

1.5 late Variables
late는 초기 데이터 없이 변수를 선언할수 있게 해줌.
late final String name;
name 변수를 나중에 넣겠다.
name = 'hh'; 이렇게 넣기 가능.
flutter 에서 API 와 작업 할 때 많이 사용.

1.6 Constant Variables
const 상수. js와 다르다.
dart final과 유사.
dart이 const는 compile-time constant를 만들어 준다.
가장 중요한 것은 const는 compile-time에 알고 있어야 하는 값.
즉 적어도 컴파일 할때는 알고 있어야 하는 final 변수라는 이야기. 
어떤 값인지 모르고, 사용자가 입력해야 하는 값이라면 final이나 var.
앱을 컴파일해서 앱스토어에 올라가기 전에는 이미 알고 있는 값을 다룰때는사용.
예를 들면..

const max_allowed_price = 120;

2.1 Lists

var numbers = [1,2,3,4];
List<int> numbers2= [1,2,3,4];
이렇게 두가지 중 한가지 방식으로 선언.

numbers.add(1);
프린트 되는 건,  numbers >>>>>> 1,2,3,4,1
collection if
var giveMeFive = true;
var numberIf = [
1,
2,
3,
4,
if(giveMeFive) 5,  // 만약 giveMeFive 가 ture면 리스트에 5를 넣어.
];
이런 형태 가능. 메뉴등 만들때 자주 사용.


2.2 String interpolation
text에 변수를 추가 하는 것. 

var name = 'rolls royce Spectre';
var buyYears = 5;
var text = '내가 살 자동차 ${name + '스펙터'}이다. 인도 받는 년도는 ${buyYears +2} 년 후이다.';
$ 뒤에 변수 사용. 변수 데이터 값이 이미 들어 있을때 동적인 변화를 줄수 있다.

2.3 collection for

list에 특정 데이터를 넣을때 값을 변경해서 넣을 수 있음. 

var oldF = ['nini', 'hoho'];
var newF = [
'asas',
for( var friendName in oldF) "GoodGood $friendName",
]
print(newF);


2.4 Maps

var bh = {
     'name' : 'bh',
     'xp' : 9.99,
     'superPower' : true,
		};
		
Map<int, bool> player = {
		 1:true,
		 2:false,
		 3:true,
	   };
	   
Map<List<int>, bool> player2 = {
     [1,3,5,7] :true,
     [2,4,6,8] :false,
   };
List<Map<String, Object>> player3 = [
		{
			'name' : 'tt',
			'age' : 12.33,
		},
		{
			'name' : 'yy',
			'age' : 112.33,
		},
		];

2.5 Sets

set에 속한 모든 아이템은 유니크하다.
set는 sequence(순서가 있음)을 의미한다.

 var numbers = {1, 2, 3, 4, 5};
 
 여기에 .add(2) 로 추가 해도 안들어가짐. 
 
 3.0 function(void main 바깥에 있음).
 
 void sayHello(String name){
 parameter 타입은 String, parameter 이름은 name
 void라는 함수는 아무것도 return하지 않는다는 뜻.
 sayHello라는 펑션은 부가적인 효과만 있고,
 아무것도 return 하지 않는다.
 }
 
 print(sayHello('bobo'));
 void로 리턴 값이없기 때문에 에러가 뜬다.
 
 
 String sayHello2(String name){
 parameter 타입은 String, parameter 이름은 name
 return '안녕? $name 좋은 하루야~';
 String으로 리턴해준다는 의미.

 }
 print(sayHello2('bobo'));
 
 String sayHello3(String name)=>'안녕? $name 좋은 하루야~';
 parameter 타입은 String, parameter 이름은 name
 
 
 
 num plus(num a, num b) => a+b;
 print(plus(4, 5));
 
 
 3.1 Named Parameters
 String sayHello(String name, int age, String country) {
 return 'Hello $name, you are $age, and you com frome $country';
 }
 
 print(sayHello(
		'hoho',
		12,
		'gugu',
	));
	
정확히 변수 형태를 받아서해야한다. 일일이 순서를 맞춰야 한다는 뜻.


String sayHello2({String name, int age, String country}) {
	return 'Hello $name, you are $age, and you com frome $country';
	}
	
	이때 에러가 발생.=> 만약에 age나 name이나 country중에 값을 안주면 어쩔거야?
	여기서 두가지 방법이 있음.
	1번은 값을 직접 할당해 놓는 것.(default값 설정)
	ex) String sayHello2({String name = 'hoho',  int age = 2,  String country ='korea'})
	2번은 required modifier
	ex) String sayHello2({required String name, required int age, required String country})
	
	
	아래는 named agument 사용법.
	print(sayHello2(
		age: 12,
		country: 'tutu',
		name: 'ToTo',
	));