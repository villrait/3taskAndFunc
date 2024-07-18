import Foundation

/*
 Создать класс Техника, добавить общие параметры. Создать функцию, которая показывает плюсы техники, создать функцию, которая показывает недостатки техники(состояние, царапины, сколы и т.д). Создать 3 класса наследника от Техники, заполнить характеристиками положительными и отрицательными, только разными. В main cоздать объекты от разных классов и вызвать функции.
 */

class Technic {
    var name: String
    var price: Double
    var about: String
    var condition: String
    var defects: String
    
    init(name: String, price: Double, about: String, condition: String, defects: String) {
        self.name = name
        self.price = price
        self.about = about
        self.condition = condition
        self.defects = defects
    }
    
    func plus() -> String {
        return "Нет информации о плюсах"
    }
    
    func minus() -> String {
        return "Нет информации о минусах"
    }
}

class SmartPhone: Technic {
    var camera: String
    var processor: String
    
    init(name: String, price: Double, about: String, camera: String, processor: String, condition: String = "Новое", defects: String = "") {
            self.camera = camera
            self.processor = processor
            super.init(name: name, price: price, about: about, condition: condition, defects: defects)
        }
    
    override func plus() -> String {
        return "отличная камера \(camera), мощный процессор \(processor)"
    }
    
    override func minus() -> String {
        return "Аккумулятор быстро разряжается, не очень прочный корпус.\(defects != "" ? " Также имеются дефекты: \(defects)" : "" )"
    }
}

class noteBook: Technic {
    var diagonal: Double
    var ram: Int
    
    init(name: String, price: Double, about: String, diagonal: Double, ram: Int , condition: String = "Новое", defects: String = "") {
        self.diagonal = diagonal
        self.ram = ram
        super.init(name: name, price: price, about: about, condition: condition, defects: defects)
    }
    
    override func plus() -> String {
        return "Большой экран \(diagonal) дюймов, хорошая производительность с \(ram) ГБ оперативной памяти."
    }
    
    override func minus() -> String {
        return "Тяжелый, батарея держит недолго.\(defects != "" ? " Также имеются дефекты: \(defects)" : "")"
    }
}

class TV: Technic {
    var resolution: String
    var diagonal: Double
    
    init(name: String, price: Double, about: String, resolution: String, diagonal: Double, condition: String = "Новое", defects: String = "") {
        self.resolution = resolution
        self.diagonal = diagonal
        super.init(name: name, price: price, about: about, condition: condition, defects: defects)
    }
    
    override func plus() -> String {
        return "Отличное качество изображения \(resolution), большой экран \(diagonal) дюймов."
    }
    
    override func minus() -> String {
        return "Низкая частота обновления, не очень удобный пульт управления.\(defects != "" ? " Также имеются дефекты: \(defects)" : "")"
    }
}

