//
//  Models.swift
//  ContactList
//
//  Created by Геннадий Ведерников on 27.10.2022.
//

struct Person {
    let name: String
    let surname: String
    let mail: String
    let numberPhone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person] {
        let dataStore = DataStore()
        var persons = [Person]()
        for _ in 1...10 {
            let person = Person(name: dataStore.names.randomElement() ?? "NoName",
                                surname: dataStore.surname.randomElement() ?? "NoSurname",
                                mail: dataStore.mails.randomElement() ?? "NoMail",
                                numberPhone: dataStore.mobilePhone.randomElement() ?? "NoPhone")
            persons.append(person)
        }
        return persons
    }
}

class DataStore {
    let names = ["Alexey",
                 "Ivan",
                 "Pete",
                 "Maxim",
                 "Andrey"
    ]
    let surname = ["Ivanov",
                   "Petrov",
                   "Sidorov",
                   "Smorniv",
                   "Treriakov"
    ]
    let mails = ["topperson@mail.ru",
                 "gamer@mail.ru",
                 "manager@mail.ru",
                 "zapchasti@mail.ru",
                 "taxideshevo@mail.ru"
    ]
    let mobilePhone = ["+7-922-568-64-46",
                 "+7-474-749-46-99",
                 "+7-356-767-11-00",
                 "+7-999-999-99-99",
                 "+7-977-777-77-77"
    ]
}
