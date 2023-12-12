//
//  ContentView.swift
//  EmployeesAPP
//
//  Created by Said Vega Ibn Rouhou on 11/12/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var empleadosVM = EmployeeViewModel()
    
    var body: some View {
        List {
            ForEach(empleadosVM.empleados ) { empleado in
                Text(empleado.firstName)
            }
        }
    }
}

#Preview {
    ContentView(empleadosVM: .previewLocalTEst)
}

