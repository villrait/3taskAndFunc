import Foundation

/*
 Создать класс Contact, добавить параметры имя и телефон, задать значения. Телефон сделать приватным. Добавить 2 функции получения номера и редактирования номера. В main создать объект контакта и попробовать изменить значение через функцию редактирования.
 */

class Contact {
    let name: String
    private var phoneNumber: String
    
    init(name: String, phoneNumber: String) {
        self.name = name
        self.phoneNumber = phoneNumber
    }
    
    func getNumber() -> String {
        return phoneNumber
    }
    
    func renameNumber(newNumber: String) {
        phoneNumber = newNumber
    }
}

