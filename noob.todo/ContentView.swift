//
//  ContentView.swift
//  noob.todo
//
//  Created by Harsh Chaturvedi on 12/08/23.
//

import SwiftUI

struct ContentView: View {
    @State var todos: [ToDoItem] = []
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(todos) { todo in
                    HStack {
                        Image(systemName: todo.complete ? "circle" : "checkmark.circle.fill")
                        Text(todo.title)
                    }
                    .swipeActions(edge: .leading) {
                        Button {
                            todo.toggleComplete()
                        } label: {
                            Label("Sup", systemImage: "checkmark.seal.fill")
                        }
                        .tint(.green)
                        
                        Button {
                            print("Sup")
                        } label: {
                            Label("Sup", systemImage: "calendar.badge.clock")
                        }
                        .tint(.blue)
                        
                        Button {
                            print("Sup")
                        } label: {
                            Label("Sup", systemImage: "pencil")
                        }
                        .tint(.yellow)
                    }
                    .onTapGesture {
                        todo.toggleComplete()
                    }
                }
                .onDelete { indexSet in
                    todos.remove(atOffsets: indexSet)
                }
                
            }
            .navigationTitle("Noob To Do")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                
                ToolbarItem(placement: .bottomBar) {
                    Text("3 Incomplete")
                        .foregroundColor(.secondary)
                }
                
                ToolbarItem(placement: .bottomBar) {
                    Button {
                        todos.append(ToDoItem(title: "Sup"))
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    
