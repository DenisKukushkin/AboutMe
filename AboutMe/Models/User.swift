//
//  Model.swift
//  AboutMe
//
//  Created by kukushkin-ds on 25.06.2022.
//


struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person(
                name: "Denis",
                surname: "Kukushkin",
                profileImage: "profile",
                info: Info(
                    city: "Moscow 🪆",
                    hobbies: ["📚 reading ", "🧑‍💻 learning", "✈️ travelling"],
                    favoriteAnimal: "Panda lover! :)",
                    animalImage: "panda"
                )
            )
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let profileImage: String
    let info: Info
}

struct Info {
    let city: String
    let hobbies: [String]
    let favoriteAnimal: String
    let animalImage: String
}



