//
//  URLRequest.swift
//  EmployeesAPP
//
//  Created by Said Vega Ibn Rouhou on 11/12/23.
//

import Foundation

extension URLRequest {
    static func getCustom(url: URL) -> URLRequest {
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        return request
    }
}
