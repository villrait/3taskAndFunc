import Foundation

/*
 Прочитать статьи и посмотреть видео про возвращаемы функции. Написать по 3 примера возвращаемых функций.
 */

func makeAdder(_ number: Int) -> (Int) -> Int {
    func adder(_ x: Int) -> Int {
        return number + x
    }
    return adder
}

func factorialFunc() -> (Int) -> Int {
    func factorial(_ n: Int) -> Int {
        if n == 0 {
            return 1
        } else {
            return n * factorial(n - 1)
        }
    }
    return factorial
}

func fibonacciGenerator() -> () -> Int {
    var previous = 0
    var current = 1
    
    func fibonacci() -> Int {
        let next = previous + current
        previous = current
        current = next
        return previous
    }
    
    return fibonacci
}
