//
//  SwiftDataExpensesApp.swift
//  SwiftDataExpenses
//
//  Created by Dominic Montalto on 22/03/2025.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataExpensesApp: App {
    
    let container: ModelContainer = {
        let schema = Schema([Expense.self])
        let container = try! ModelContainer(for: schema, configurations: [])
        return container
    }()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(container)
//        .modelContainer(for: [Expense.self])
    }
}
