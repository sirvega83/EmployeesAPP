//
//  TestData.swift
//  EmployeesAPP
//
//  Created by Said Vega Ibn Rouhou on 12/12/23.
//

import Foundation

extension Employee {
    static let testPreview = Employee(id: 1, email: "sirvega83@gmail.com", username: "sirvega83", firstName: "Said", lastName: "Vega", avatar: "https://robohash.org/enimsolutaperferendis.png")
}

struct testLocalEmployee: EmployeeInteractorProtocol {
    let urlTest = Bundle.main.url(forResource: "TestEmployee", withExtension: "json")!
    
    func getEmpleados() async throws -> [Employee] {
        let data = try Data(contentsOf: urlTest)
        return try JSONDecoder().decode([EmployeeDTO].self, from: data).map(\.toPresentation)
    }
}

extension EmployeeViewModel {
    static let previewLocalTEst = EmployeeViewModel(employeeInteractor: testLocalEmployee())
}
