// MARK: pattern matching partial
// using _ for values we dont care about
// let to find out the values

//let authentication = (name: "kenzo", breed: "border collie", chip: "1234-5678-9123")
//
//let doggy = (name: "kento", breed: "shiba", chip: "1234-5678-2222")
//switch doggy {
//case ("kento", "shiba", let chip):
//    print("hello kento your chip is \(chip)")
//case("kenzo", "border collie", _):
//    print("hello kenzo")
////case(_, _, _):
////    print("you can be anyones dog!")
//default:
//     print("thats not a dog")
//}
//
//

// MARK: PATTERNMATCHING CALCULATED TUPLES

//func fizzbuzz(number: Int) -> String {
//    switch (number % 3 == 0, number % 5 == 0) {
//    case (true, false):
//        return "fizz"
//    case (false, true):
//        return "buzz"
//    case (true, true):
//        return "fizzbuzz"
//    default:
//        return "idk bro"
//    }
//}
//
//print(fizzbuzz(number: 423423424245))

// MARK: PATTERN MATCHING LOOPS

//let natan = (name: "natan", age: 19, employment: true)
//let kenzo = (name: "kenzo", age: 1, employment: false)
//let boya = (name: "boya", age: 20, employment: true)
//
//let friends = [natan, kenzo, boya]
//
//for friend in friends {
//    print(friend.name)
//}
//
//for case ("natan", 19, true) in friends {
//    print("its NATAN!")
//}
//
//for case (let name, let age, _) in friends {
//    print("OMG its \(name), their \(age)")
//}
//
//for case let (name, age, _) in friends {
//    print(name, age)
//}
//
//for case let (name, 19, _) in friends {
//    print("all these people are 19 \(name)")
//}

// MARK: PATTERN MATCHING OPTIONALS

//let username: String? = "Kozuki"
//let password: String? = "not natan"
//
//switch (username, password) {
//case let (.some(username), .some(password)):
//    print("welcome \(username)")
//case let (.some(username), .none):
//    print("fill in password please")
//default:
//    print("who are you?")
//}
//
//switch (username, password) {
//case let (.some(matchedUsername), .some(matchedPassword)):
//    print("welcome \(matchedUsername)")
//case let (.some(matchedUsername), .none):
//    print("fill in password please")
//default:
//    print("who are you?")
//}
//
//switch (username, password) {
//case let (name?, passcode?):
//    print("welcome \(name)")
//case let (name?, nil):
//    print("fill in password please")
//default:
//    print("who are you?")
//}
//
//let data: [Any?] = ["apple", 324, 32.423432, "mangos", true, nil, "pokemon", nil, "even more apples"]
//
//for case let stuff? in data {
//    print(stuff)
//}
//
//for case let .some(stuff) in data {
//    print(stuff)
//}


// MARK: PATTERN MATCHING RANGES
