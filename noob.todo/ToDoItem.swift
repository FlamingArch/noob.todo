//
//  ToDoItem.swift
//  noob.todo
//
//  Created by Harsh Chaturvedi on 12/08/23.
//

import Foundation

class ToDoItem: Identifiable {
    var id: UUID = UUID()
    var complete = false
    
    var title: String
    
    init(title: String) {
        self.title = title
    }
    
    func markComplete() {
        self.complete = true
    }
    
    func markIncomplete() {
        self.complete = false
    }
    
    func toggleComplete() {
        self.complete.toggle()
    }
}
