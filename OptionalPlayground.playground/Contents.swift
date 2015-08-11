//: Playground - noun: a place where people can play

import UIKit

var a: String? // Optional
var b: String  // Not optional
print(a)
a = nil
a = "test"
// String?型は、String型とは別の型なので、同じように操作することはできない
// print(a + "aaa") // error!!
// print(b) // error!!
// b = nil // error!!

// T? は Optional<T> のシンタックスシュガー
var bb: Optional<Int> // Int?　と同じ意味

class Note {
    func getText() -> String {
        return "note";
    }
}

var note: Note?
// print(note.getText()) // error!!
// print(note!.getText()) // error!!(Forced unwrapping(nil))
note = Note()
print(note!.getText()) // Forced unwrapping("note")

print(note?.getText()) // Optional Chaining("note")
note = nil
print(note?.getText()) // Optional Chaining("nil")

note = Note()
print(note!.getText()) // Forced unwrapping = return String Type(String)
print(note?.getText()) // Optional Chaining = return Optional Type(Optional<String>)


// if や while 文の条件式で宣言され、optional型の変数を代入された変数は、非optional型になる
if var n = note {
    print(n.getText())
}
while var n = note {
    print(n.getText())
    break;
}

// nilだった場合、条件式はfalse
note = nil
if var n = note {
    print("not nil")
} else {
    print("nil")
}


var wrappedInt: Int? = 1 // Optional 型

//
// 比較演算子を使うと、optional型の変数が自動的にアンラップされる
//
println(wrappedInt == 1) // -> true
println(wrappedInt >= 1) // -> true
println(wrappedInt >  1) // -> false
println(wrappedInt <= 1) // -> true
println(wrappedInt <  1) // -> false
println(wrappedInt != 1) // -> false

// Optional型の変数がnilであっても、エラーは発生しない
wrappedInt = nil
println(wrappedInt == 1) // -> fase
println(1 == wrappedInt) // -> fase

// !!!!!
if wrappedInt < 0 {
    println("\(wrappedInt) is a negative number.") // -> nil is a negative number.
}
// !!!!!
if wrappedInt < Int.min {
    println("\(wrappedInt) < Int.min(\(Int.min))")
}


var wrapped: Int?  = 1 // Optional 型
var iwrapped: Int! = 2 // Implicitly unwrapped optional 型
var unwrapped: Int = 3 // 非 optional 型
iwrapped = wrapped // OK
// unwrapped = wrapped // NG
unwrapped = wrapped! // OK
// unwrapped = wrapped?  // NG

wrapped = iwrapped // OK
unwrapped = iwrapped // OK

wrapped = unwrapped // OK
iwrapped = unwrapped // OK


var o: Int? = 1

// a ?? b
// a が nil でなければ、a!（a をアンラップしたもの） を返す
// a が nil であれば、b を返す
print(o ?? 2) // 1
o = nil
print(o ?? 2) // 2
// a != nil ? a! : b のシンタックスシュガー

"10".toInt()
"test".toInt()


if let a = "10".toInt() {
    print(a)
}

// nil
if let aa = "test".toInt() {
    print(aa)
}

let array = [String]()
//let array = ["test"]

if array.first?.isEmpty != nil {
    print("not nil")
}

// 参考
// http://qiita.com/cotrpepe/items/518c4476ca957a42f5f1
// https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/OptionalChaining.html