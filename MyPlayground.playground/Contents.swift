// MARK: pattern matching partial
//
//
// using _ for values we dont care about
// let to find out the values
//
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
//
// MARK: PATTERNMATCHING CALCULATED TUPLES
//
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
//
// MARK: PATTERN MATCHING LOOPS
//
//let natan = (name: "natan", age: 19, employment: true)
//let kenzo = (name: "kenzo", age: 1, employment: false)
//let boya = (name: "boya", age: 20, employment: true)
//
//let friends = [natan, kenzo, boya]

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
//
//
//let age = 18
//
//switch age {
//case 0 ..< 18:
//    print("little looking kid")
//case 18 ..< 60:
//    print("big man ting")
//default:
//    print("skin & bines")
//}
//
//if case 0 ..< 18 = age {
//    print("little looking kid")
//} else if case 18 ..< 60 = age {
//    print("big man ting")
//} else {
//    print("skin & bines")
//}
//
//if 0 ..< 18 ~= age {
//    print("little looking kid")
//} else if 18 ..< 60 ~= age {
//    print("big man ting")
//} else {
//    print("skin & bines")
//}
//
//if (0 ..< 18).contains(age) {
//    print("little looking kid")
//} else if (18 ..< 60).contains(age) {
//    print("big man ting")
//} else {
//    print("skin & bines")
//}

//let dog = (name: "kenzo", breed: "border collie", age: 1)
//
//switch dog {
//case let (name, _, 0 ..< 3):
//    print("\(name) is still a baby")
//case let (name, _, 3 ..< 5):
//    print("\(name) is a big doggy")
//case let (name, _, _):
//    print("\(name) well kept pup!")
//}


// MARK: ENUM PATTERN MATCHING

//enum WeatherType {
//    case cloudy(coverage: Int)
//    case sunny
//    case windy(speed: Int)
//}
//
//let today = WeatherType.cloudy(coverage: 10)
//
//switch today {
//case .cloudy(let coverage) where coverage < 100:
//    print("its cloudy with \(coverage)% coverage!")
//case .cloudy(let coverage) where coverage < 100:
//    print("why you in london for")
//case .windy(let speed) where (0 ..< 50).contains(speed):
//    print("its windy")
//default:
//    print("its sunny")
//}
//
//let forecast: [WeatherType] = [.cloudy(coverage: 30), .cloudy(coverage: 35), .sunny, .windy(speed: 69), .cloudy(coverage: 100)]
//
//for case let .cloudy(coverage) in forecast {
//    print(coverage)
//}
//
//


// MARK: PATTERN MATCHING TYPES

//import UIKit
//
//let view: AnyObject = UIButton()
//
//for label in view.subviews where label is UIlabel {
//    print("found a label with frame \(frame.label)")
//}
//
//for case let label as UILabel in view.subviews {
//    print("found a label with \(label.text)")
//}


// MARK: pattern matching where
//for number in numbers where number % 2 == 1 {
//    print("\(number) is a odd number")
//}
//
//let celebs = ["taylor swift", "ed sheeran", "madison beer"]
//
//for name in celebs where !name.hasPrefix("taylor") {
//    print(name)
//}

