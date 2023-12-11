//
//  EmployeeViewModel.swift
//  EmployeesAPP
//
//  Created by Said Vega Ibn Rouhou on 11/12/23.
//

import Foundation

final class EmployeeViewModel: ObservableObject {
    
    let employeeInteractor: EmployeeInteractorProtocol
    @Published var empleados: [Employee] = []
    
    init(employeeInteractor: EmployeeInteractorProtocol = EmployeeInteractor()) {
        self.employeeInteractor = employeeInteractor
        Task {
            await getEmpleados()
        }
    }
    
    
    func getEmpleados() async {
        do {
            let emp =  try await employeeInteractor.getEmpleados()
            await MainActor.run {
                empleados = emp
            }
        } catch let error as NetworkErrors {
            print(error.description)
            
        } catch {
            print(error)
            
        }
    }
}

//@sendable

