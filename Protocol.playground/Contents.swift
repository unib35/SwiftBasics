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
                    
