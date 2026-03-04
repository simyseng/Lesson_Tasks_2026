//
//  Task.swift
//  Lesson_Tasks_2026
//
//  Created by Stanley Sim on 13/1/26.
//

import Foundation

struct Task: Identifiable, Codable, Equatable {
    let id: UUID
    var name: String
    var category: String
    var dueDate: Date
    var isCompleted: Bool
    
    init(id: UUID = UUID(),
         name: String,
         category: String,
         dueDate: Date,
         isCompleted: Bool) {
        self.id = id
        self.name = name
        self.category = category
        self.dueDate = dueDate
        self.isCompleted = isCompleted
    }
    
    static func newDefaultTask(number: Int) -> Task {
        Task(name: "New Task \(number)",
             category: "Personal",
             dueDate: Calendar.current.date(byAdding: .day, value: 1, to: Date()) ?? .now,
             isCompleted: false)
    }
}
