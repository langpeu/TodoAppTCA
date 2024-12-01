//
//  TodoAppTCAApp.swift
//  TodoAppTCA
//
//  Created by Langpeu on 12/1/24.
//

import ComposableArchitecture
import SwiftUI

@main
struct TodosApp: App {
    var body: some Scene {
        WindowGroup {
            AppView(
              store: Store(initialState: Todos.State()) {
                Todos()
              }
            ) 
        }
    }
}
