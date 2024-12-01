//
//  Todo.swift
//  TodoAppTCA
//
//  Created by Langpeu on 12/1/24.
//

import ComposableArchitecture
import SwiftUI


@Reducer
struct Todo {
    @ObservableState
    struct State: Equatable, Identifiable {
        var description = ""
        var id: UUID
        var isComplete = false
    }
    
    
    enum Action: BindableAction, Sendable {
        case binding(BindingAction<State>)
    }
    
    var body: some Reducer<State, Action> {
        BindingReducer()
    }
}


struct TodoView: View {
    @Bindable var store: StoreOf<Todo>
    
    var body: some View {
        HStack {
            Button {
                store.isComplete.toggle()
            } label: {
                Image(systemName: store.isComplete ? "checkmark.square" : "square")
            }
            .buttonStyle(.plain)
            
            TextField("Untitled Todo", text: $store.description)
        }
        .foregroundColor(store.isComplete ? .gray : nil)
    }
    
}
