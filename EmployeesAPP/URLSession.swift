//
//  URLSession.swift
//  EmployeesAPP
//
//  Created by Said Vega Ibn Rouhou on 11/12/23.
//

import Foundation

extension URLSession {
    func getDataCustom(request: URLRequest) async throws -> (Data, HTTPURLResponse) {
        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            guard let response = response as? HTTPURLResponse else { throw NetworkErrors.noHTTP }
            return (data, response)
        } catch {
            throw NetworkErrors.general(error)
        }
    }
}

