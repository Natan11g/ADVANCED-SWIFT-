// ADVANCED SWITCH CASES

// BASIC

let fruit = "apple"

switch fruit {
case "blueberry":
    print("i have some blueberries")
case "strawberry":
    print("i have some strawberries")
case "apple":
    print("i have some apples")
default:
    print("thats not a fruit idoit")
}


// ANOTHER SWITCH

let username = "natan"
let password = "notnatan22"

switch (username, password) {
case ("pewdiepie", "thepugdog"):
    print("welcome pewds")
case ("natan", "notnatan22"):
    print("sup nat")
default:
    print("who are u?")
}

let authentication = (name: "pewdiepie", password: "thepugdog")

switch authentication {
case ("pewdiepie", "thepugdog"):
    print("welcome pewds")
case ("natan", "notnatan22"):
    print("sup nat")
default:
    print("who are u?")
}
