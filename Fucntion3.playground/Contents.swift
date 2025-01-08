import Foundation

// 매개변수 기본값
func greeting(friend: String, me: String = "lee") {
    print("Hello \(friend), I'm \(me)")
}

// 기본값이 지정된 매개변수를 생략할 수 있다.
greeting(friend: "kim")
greeting(friend: "kim", me: "park")

// 매개변수 레이블
// 매개변수 레이블은 함수를 호출할 때 역할을 명확하게 하고, 함수 사용자의 입장에서 표현하고자 사용
func greeting(to friend: String, from me: String) {
    print("Hello \(friend), I'm \(me)")
}

// 매개변수 레이블을 다르게 준다면 다른 함수로 취급하게 된다.
func greeting(to2 friend: String, from2 me: String) {
    print("Welcome \(friend), I'm \(me)")
}

func greeting2(_ friend: String, _ me: String){
    print("Hello \(friend), I'm \(me)")
}

greeting(to: "kim", from: "lee")
greeting(to2: "kim", from2: "lee")

// 가변 매개변수
// 전달받을 값의 개수를 알기 어려울 때 사용
// ...를 이용한다. (함수당 하나만 가질 수 있음)
func sayHelloFriends(me: String, friends: String...) -> String {
    return "Hello \(friends), I'm \(me)"
}

print(sayHelloFriends(me: "lee", friends: "kim", "park", "jung"))

// 스위프트는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 언어
// 스위프트의 함수는 일급 객체이므로 변수, 상수 등에 저장이 가능하다
// 매개변수 레이블이 있는 함수를 대입하는건 불가능하다. (래퍼함수 또는 클로저를 사용한다)
var someFunction: (String, String) -> Void = greeting2

someFunction("kim", "lee")



// 매개변수를 통해 전달도 가능하다.
func runAnother(function: (String, String) -> Void) {
    function("Jenny", "lee")
}

// 단, 타입이 다른 함수는 할당 불가능함.
// 매개변수로 함수를 할당도 가능하다.
runAnother(function: greeting2)
runAnother(function: greeting(to:from:))
