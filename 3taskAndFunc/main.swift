import Foundation
print("-----------------------------")
print("3.1")
let smartphone1 = SmartPhone(name: "iPhone", price: 999.0, about: "New smartphone for Apple", camera: "48MP", processor: "A17Pro", condition: "New", defects: "")

print(smartphone1.plus())
print(smartphone1.minus())

let noteBook1 = noteBook(name: "MacBook Pro 16", price: 1999.0, about: "Power notebook for work and game", diagonal: 16.0, ram: 512, condition: "Old", defects: "Scratched on the top")

print(noteBook1.plus())
print(noteBook1.minus())

let tv = TV(name: "Sony", price: 1499.0, about: "The new TV", resolution: "4k", diagonal: 65.0)

print(tv.plus())
print(tv.minus())

print("-----------------------------")
print("3.2")

let contact1 = Contact(name: "Alex Skutarenko", phoneNumber: "8-922-254-12-12")
print("Contact: \(contact1.name), number: \(contact1.getNumber())")

contact1.renameNumber(newNumber: "8-922-000-10-12")
print("Rename number: \(contact1.getNumber())")

print("-----------------------------")
print("3.3")

let add3 = makeAdder(3)
let result = add3(5)
print(result)

let factorial = factorialFunc()
let result2 = factorial(5)
print(result2)

let fibonacci = fibonacciGenerator()

for _ in 1...10 {
    let fidNumber = fibonacci()
    print(fidNumber)
}
