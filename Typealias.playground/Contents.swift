import Foundation

struct Pug {
    let name: String
}

let pugs =  [Pug]()

typealias Grumble = [Pug]

var grumble = Grumble()

let marty = Pug(name: "Marty")
let wolfie = Pug(name: "Wolfie")
let buddy = Pug(name: "Buddy")

grumble.append(contentsOf: [marty, wolfie, buddy])

enum Channel {
    case BBC1
    case BBC2
    case BBC3
}

class programmeFetcher {
    typealias FetchResultHandler = (String?, Error?) -> Void
    func fetchCurrentProgramme(forChannel channel: Channel, resultHandler: FetchResultHandler) {
        let exampleProgramName = "Sherlock"
        resultHandler(exampleProgramName, nil)
        
        resultHandler(nil, nil)
    }
    
    func fetchNextProgrammeName(forChannel channel: Channel, resultHandler: FetchResultHandler) {
        let exampleProgramName = "Luther"
        resultHandler(exampleProgramName, nil)
    }
}

let fetcher = programmeFetcher()
fetcher.fetchCurrentProgramme(forChannel: .BBC1, resultHandler: { programName, error  in
    guard let programName else {
        print("No programme found")
        return
    }
    guard error == nil else {
        print("Error fetching programme: \(error)")
        return
    }
    
    print(programName)
    
})
