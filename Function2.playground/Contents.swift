import Foundation

//함수의 선언
//함수선언의 기본 형태
//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
//  함수 구현부
//  return 반환값
//}

func sum(a: Int, b: Int) -> Int {
    return a + b
}


//반환값이 없는 함수
func printName(name: String) -> Void {
    print(name)
}

//반환값이 없는 함수 (Void는 생략가능)
func printName2(name: String) {
    print(name)
}

//매개변수가 없는 함수
func max() -> Int{
    return Int.max
}

//반환값과 매개변수가 없는 함수
func hello() {
    print("hello")
}




