import Foundation

protocol Describable {
    var description: String { get }
}

struct Person : Describable {
    let name: String
    let age: Int
    
    var description: String {
        "\(name) is \(age) years old"
    }
}

let person = Person(name: "lee", age: 26)
print(person.description)

protocol Movable {
    func move(to point: CGPoint)
}

class Car: Movable {
    var position: CGPoint = CGPoint(x: 0, y: 0)
    
    func move(to point: CGPoint) {
        position = point
        print("car moved to \(point)")
    }
}

let car = Car()
car.move(to: CGPoint(x: 10, y: 20))
print(car.position)

protocol Named {
    init(name: String)
    
    func displayName() -> String
}

extension Named {
    func printDescription() {
        print(displayName())
    }
}

class Person2: Named {
    let name: String
    required init(name: String) {
        self.name = name
    }
    
    func displayName() -> String {
        return "Person named \(name)"
    }
}

class Friend: Person2 {
    let age: Int

    // Friend의 초기화 메서드
    required init(name: String) {
        self.age = 0 // 기본값으로 초기화
        super.init(name: name)
    }

    init(name: String, age: Int) {
        self.age = age
        super.init(name: name)
    }
    
    override func displayName() -> String {
        return "Friend named \(name), Age: \(age)"
    }
}

let friend = Friend(name: "Lee", age: 25)
friend.printDescription()

protocol Payable {
    func calculateWages() -> Double
}

protocol TimeOffRequestable {
    func requestTimeOff(days: Int) -> Bool
}

func processEmployee(employee: Payable & TimeOffRequestable) {
    let wages = employee.calculateWages()
    let timeOffRequest = employee.requestTimeOff(days: 10)
}

protocol Container {
    associatedtype Item
    mutating func add(_ item: Item)
    var count: Int { get }
}

struct IntStack: Container {
    typealias Item = Int
    private var items: [Int] = []
    
    mutating func add(_ item: Int) { items.append(item) }
    var count: Int { items.count }
}

func printDecription<T: Describable>(_ item: T) {
    print(item.description)
}

protocol Runnable {
    func run()
}

protocol Swimmable {
    func swim()
}

protocol Flyable {
    func fly()
}

struct Bird: Flyable, Runnable {
    func fly() { print("Flying") }
    func run() { print("Running") }
}

struct Fish: Swimmable {
    func swim() { print("Swimming") }
}

struct Duck: Flyable, Runnable, Swimmable {
    func fly() { print("Flying") }
    func run() { print("Running") }
    func swim() { print("Swimming") }
}

let duck = Duck()
duck.fly()
duck.run()
duck.swim()

