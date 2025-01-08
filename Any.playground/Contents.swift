//Any - Swift의 모든 타입을 지칭하는 키워드
var someAny: Any = 100
someAny = "어떤 타입도 가능"
someAny = 12.345

print(someAny)

//AnyObject
class SomeClass {}
var SomeAnyObject: AnyObject = SomeClass()
//SomeANyObject = 123.12 //오류 발생


//nil
//someAny = nil //단, nil은 허용하지 않는다.
