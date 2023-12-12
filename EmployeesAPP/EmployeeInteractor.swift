//
//  EmployeeInteractor.swift
//  EmployeesAPP
//
//  Created by Said Vega Ibn Rouhou on 11/12/23.
//

import Foundation

protocol EmployeeInteractorProtocol {
    func getEmpleados() async throws -> [Employee]
}

struct EmployeeInteractor: EmployeeInteractorProtocol {
    func getEmpleados() async throws -> [Employee] {
        try await getJSON(request: .getCustom(url: .empleadosURL), type: [EmployeeDTO].self).map(\.toPresentation)
        
//        let (data, response) = try await URLSession.shared.data(for: .getCustom(url: .getEmpleados))
//        guard let response = response as? HTTPURLResponse else { throw NetworkErrors.noHTTP }
//        if response.statusCode == 200 {
//            do {
//                return try JSONDecoder().decode([EmployeeDTO].self, from: data).map(\.toPresentation)
//            } catch {
//                throw NetworkErrors.parseJson(error)
//            }
//        } else {
//            throw NetworkErrors.badStatusCode(response.statusCode)
//        }
    }
}


