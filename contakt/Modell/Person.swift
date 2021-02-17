//
//  Person.swift
//  contakt
//
//  Created by Sofi on 16.02.2021.
//

import Foundation

struct Person {
    
    let number: String
    let emailDelimit: String
    let emailDom: String
    let fullname: String
    
    static var randomOne: Person   {
        return Person(number: DataManager.number,
                      emailDelimit: DataManager.emailDelimit,
                      emailDom: DataManager.emailDom,
                      fullname: DataManager.fullName)
    }
    
    static var randomMany: [Person] {
        return (1...200).map { _ in Person.randomOne }
    }
}

