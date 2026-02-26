//
//  Task.swift
//  Lesson_Tasks_2026
//
//  Created by Stanley Sim on 15/1/26.
//

import Foundation

struct Task: Identifiable, Codable, Equatable {
    let id: UUID
    var title: String
    var category: String
    var dueDate: Date
    var isCompleted: Bool
    
    init(id: UUID = UUID(),
         title: String,
         category: String,
         dueDate: Date,
         isCompleted: Bool) {
        self.id = id
        self.title = title
        self.category = category
        self.dueDate = dueDate
        self.isCompleted = isCompleted
    }
    
    static func newDefaultTask(number: Int) -> Task {
        Task(
            title: "New Task \(number)",
            category: "Personal",
            dueDate: Calendar.current.date(byAdding: .day, value: 1, to: Date()) ?? Date(),
            isCompleted: false
        )
    }
}

