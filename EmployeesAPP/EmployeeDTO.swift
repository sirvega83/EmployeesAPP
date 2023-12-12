//
//  EmployeeDTO.swift
//  EmployeesAPP
//
//  Created by Said Vega Ibn Rouhou on 11/12/23.
//

import Foundation

struct EmployeeDTO: Codable {
    let id: Int
    let email: String
    let username: String
    let firstName: String
    let lastName: String
    let avatar: String
    
}

extension EmployeeDTO {
    var toPresentation: Employee {
        Employee(id: id, email: email, username: username, firstName: firstName, lastName: lastName, avatar: avatar)
    }
}
