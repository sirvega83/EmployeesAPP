//
//  NetworkErros.swift
//  EmployeesAPP
//
//  Created by Said Vega Ibn Rouhou on 11/12/23.
//

import Foundation

enum NetworkErrors: Error, CustomStringConvertible {
    case noHTTP
    case parseJson(Error)
    case badStatusCode(Int)
    case general(Error)
    
    var description: String {
        switch self {
        case .noHTTP:
            "No es una llamada HTTP"
        case .parseJson(let error):
            "Fallo el parseo del json \(error.localizedDescription)"
        case .badStatusCode(let statusCode):
            "Error de status \(statusCode)"
        case .general(let error):
            "Error general \(error)"
        }
    }
}
