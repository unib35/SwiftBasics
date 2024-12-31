// 입력과 반환값이 있는 함수
func greet(name: String) -> String {
    return "Hello \(name)!!"
}

let message = greet(name: "lee")
print(message)

// 입력값만 있고 반환값이 없는 함수
func sayHello(name: String) {
    print("Hello \(name)!!")
}

sayHello(name: "lee")

// 입력값도 반환값도 없는 함수
func printHello() {
    print("Hello everyone!!")
}

printHello()

// 여러개의 매개변수를 가지는 함수
func addNumbers(a: Int, b: Int) -> Int {
    return a + b
}

let result : Int = addNumbers(a: 54, b: 46)
print(result)


// 기본값을 가지는 매개변수
func greetWho(name: String = "Guest") {
    print("Hello \(name)!!")
}

greetWho()
greetWho(name: "lee")

// 반환값이 여러개인 함수 (튜플 반환)
func getMinMax(numbers: [Int]) -> (min: Int, max: Int) {
    let minNumber = numbers.min() ?? 0
    let maxNumber = numbers.max() ?? 0
    return (min: minNumber, max: maxNumber)
}

let minMaxResult = getMinMax(numbers: [1, 2, 3, 4, 5])
print("최소값 : \(minMaxResult.min), 최대값 : \(minMaxResult.max)")

// 가변 매개변수
func sumNumbers(numbers: Int...) -> Int {
    return numbers.reduce(0, +)
}

let result2 = sumNumbers(numbers: 1, 2, 3, 4, 5)
print(result2)
