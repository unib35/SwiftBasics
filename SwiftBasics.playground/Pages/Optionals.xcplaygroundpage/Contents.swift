import Foundation
import UIKit

// 항상 값이 있고, Boolean
let myBool: Bool = false

// 값이 있을수도 없을수도 있으며, 그것은 Boolean
var myOtherBool: Bool? = nil

//print(myOtherBool)
//myOtherBool = true
//print(myOtherBool)
//myOtherBool = false
//print(myOtherBool)
//myOtherBool = nil
//print(myOtherBool)

// nil 병합 연산자
let newValue: Bool? = myOtherBool

// myOtherBool이 값이 있다면 대입, 아니라면 false
let newValue2: Bool = myOtherBool ?? false

print("new value 2: \(newValue2.description)")

var myString: String? = "Hello World"
print(myString ?? "There is no value")

myString = "New Text"
print(myString ?? "There is no value")

myString = nil
print(myString ?? "There is no value")

// -----------------------------------------------


func checkIfUserIsPremium() -> Bool? {
    var userIsPremium2: Bool? = nil  // 옵셔널 Bool 변수를 선언 (초기값 nil)
    
    return userIsPremium2  // nil을 반환 (userIsPremium2는 값이 없기 때문)
}

func checkIfUserIsPremium2() -> Bool {
    return false  // 항상 false를 반환
}

// 옵셔널 Bool 값을 받아 변수에 저장
let isPremium = checkIfUserIsPremium()

// If-let
// if-let이 참일때 옵셔널바인딩된 값에 접근
func checkIfUserIsPremium3() -> Bool {
    var userIsPremium: Bool? = nil  // nil 값을 가진 옵셔널 Bool 선언
    
    if let newValue = userIsPremium {  // userIsPremium이 nil이 아니면 실행됨
        print(newValue)  // newValue 출력
    } else {
        return false  // userIsPremium이 nil이면 false 반환
    }
}


func checkIfUserIsPremium4() -> Bool {
    var userIsPremium: Bool? = nil  // nil 값을 가진 옵셔널 Bool 선언
    
    if let newValue = userIsPremium {  // 옵셔널 바인딩을 통해 nil이 아닐 경우 실행
        print(newValue)  // newValue 출력
    }
    
    return false  // 항상 false를 반환
}



func checkIfUserIsPremium5() -> Bool {
    var userIsPremium: Bool? = nil  // nil 값을 가진 옵셔널 Bool 선언
    
    if let userIsPremium {  // Swift 5.7 이상에서 지원하는 옵셔널 바인딩 축약 문법
        return userIsPremium  // userIsPremium이 nil이 아닐 경우 해당 값 반환
    }
    
    return false  // nil이면 false 반환
}


// Guard-let
// guard-let이 거짓일때 옵셔널 바인딩된 값에 접근
func checkIfUserIsPremium6() -> Bool {
    var userIsPremium: Bool? = nil  // nil 값을 가진 옵셔널 Bool 선언
    
    guard let newValue = userIsPremium else {  // guard문으로 nil 체크
        return false  // userIsPremium이 nil이면 false 반환
    }
    
    return newValue  // newValue (즉, userIsPremium 값)을 반환
}

func checkIfUserIsPremium7() -> Bool {
    var userIsPremium: Bool? = nil  // nil 값을 가진 옵셔널 Bool 선언
    
    guard let userIsPremium else {
        return false
    }
    return userIsPremium
    
}

// -----------------------------------------------

var userIsNew: Bool? = true
var userDidCompleteOnboarding: Bool? = false
var userFavoriteMovie: String? = nil

@MainActor
func checkIfUserIsSetUp() -> Bool {
    if let isNew = userIsNew, let didCompleteOnboarding = userDidCompleteOnboarding, let favoriteMovie = userFavoriteMovie {
        return getUserStatus(userIsNew: isNew, userDidCompleteOnboarding: didCompleteOnboarding, userFavoriteMovie: favoriteMovie)
    } else {
        return false
    }
}

@MainActor
func checkIfUserIsSetup2() -> Bool {
    guard let userIsNew, let userDidCompleteOnboarding, let userFavoriteMovie else {
        return false
    }
    
    return getUserStatus(userIsNew: userIsNew, userDidCompleteOnboarding: userDidCompleteOnboarding, userFavoriteMovie: userFavoriteMovie)
}

func getUserStatus(userIsNew: Bool, userDidCompleteOnboarding: Bool, userFavoriteMovie: String) -> Bool {
    if userIsNew && userDidCompleteOnboarding {
        return true
    }
    
    return false
}

@MainActor
func checkIfUserIsSetUp3() -> Bool {
    if let userIsNew {
        // userIsNew == Bool
        
        if let userDidCompleteOnboarding {
            // userDidCompleteOnboarding == Bool
            
            if let userFavoriteMovie {
                // userFavoriteMovie == Bool
                return getUserStatus(userIsNew: userIsNew, userDidCompleteOnboarding: userDidCompleteOnboarding, userFavoriteMovie: userFavoriteMovie)
            } else {
                // userFavoriteMovie == nil
                return false
            }
            
        } else {
            // userDidCompleteOnboarding == nil
            return false
        }
        
    } else {
        // userIsNew == nil
        return false
    }
}
