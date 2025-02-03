import UIKit

func myFirstFunction() {
    print("MY FIRST FUNCTION CALLED")
    mySecondFunction()
    myThirdFunction()
}

func mySecondFunction() {
    print("MY SECOND FUNCTION CALLED")
}

func myThirdFunction() {
    print("MY THIRD FUNCTION CALLED")
}

myFirstFunction()

func getUserName() -> String {
    let username: String = "Lee"
    return username
}

func checkIfUserIsPremiumF() -> Bool {
    return false
}

let name: String = getUserName()
print(name)

let isPremium: Bool = checkIfUserIsPremiumF()
print(isPremium)

// ----------------------------------
showFirstScreen()

func showFirstScreen() {
    var userDidCompleteOnBoarding: Bool = false
    var userProfileIsCreated: Bool = true
    let status = checkUserStatus(didCompleteOnboarding: userDidCompleteOnBoarding, profileIsCreated: userProfileIsCreated)
    
    if status == true {
        print("SHOW HOME SCREEN")
    } else {
        print("SHOW ONBOARDING SCREEN")
    }
}

func checkUserStatus(didCompleteOnboarding: Bool, profileIsCreated: Bool) -> Bool {
    if didCompleteOnboarding && profileIsCreated {
        doSomeThingElse(someValue: didCompleteOnboarding)
        return true
    } else {
        return false
    }
}


// ----------------------------------

let newValue = doSomeThing()

func doSomeThing() -> String {
    var isNew: Bool = false
    var title: String = "Avengers"
    
    if isNew {
        return "New"
    } else {
        return "Not new"
    }
    
}

func doSomeThingElse(someValue: Bool) {
    var title: String = "Avengers"
    
    guard title == "Avengers" else {
        print("Note Marvel")
        return
    }
    print("Marvel")
}
