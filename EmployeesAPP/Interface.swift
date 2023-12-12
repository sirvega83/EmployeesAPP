//
//  URL.swift
//  EmployeesAPP
//
//  Created by Said Vega Ibn Rouhou on 11/12/23.
//

import Foundation

let mainURL = URL(string: "https://acacademy-employees-api.herokuapp.com/api")!

extension URL {
    static let empleadosURL = mainURL.appending(path: "getEmpleados")
}
