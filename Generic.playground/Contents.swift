import UIKit

struct MyArray<SomeElement>{
    // 제네릭을 담은 빈배열
    var elements : [SomeElement] = [SomeElement]()
    
    init(_ elements: [SomeElement]){
        self.elements = elements
    }
    
}

struct Friend {
    var name : String
}

struct Coder {
    var name : String
}

var mySomeArray = MyArray([1, 2, 3])
print("mySomeArray : \(mySomeArray)")

let friend_01 = Friend(name: "철수")
let friend_02 = Friend(name: "영희")
let friend_03 = Friend(name: "수잔")

var myFriendArray = MyArray([friend_01, friend_02, friend_03])
print("myFriendArray : \(myFriendArray)")
