//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Dictionary
var dictionary = ["key": "test", "key2": 1]
dictionary["key3"] = "test3"

dictionary["key"]

dictionary.count

let keys = Array(dictionary.keys)
let values = Array(dictionary.values)

//dictionary["name"] = "ore"
if let name = dictionary["name"] {
    print("\(name)")
} else {
    print("no name")
}

// keyがなければnil keyがあれば元の値を返す
dictionary.updateValue("Update!!!!!", forKey: "key")
dictionary.updateValue("Update!!!!!", forKey: "name")

dictionary.isEmpty

dictionary.removeValueForKey("name")
dictionary.removeAll()

func testFunc() -> (test :String, eee :Double){
    return ("test", 100)
}
func empty() {
}

let value = testFunc()
print(value.test)

let emptyValue :() = empty()
print(emptyValue)


var letters: [Character] = ["c", "a", "f", "e"]
var string: String = String(letters)

print(letters.count) // 4
print(string) // cafe
print(string.characters.count) // 4

let acuteAccent: Character = "\u{0301}" // ´ COMBINING ACUTE ACCENT' (U+0301)

string.append(acuteAccent)
print(string.characters.count) // 4
print(string.characters.last!) // é
string.characters.contains("e") // false
string.characters.contains("´") // false
string.characters.contains("é") // true

let decomposed = "\u{1100}\u{1161}" // ᄀ + ᅡ
let precomposed = "\u{AC00}" // 가
decomposed == precomposed // true