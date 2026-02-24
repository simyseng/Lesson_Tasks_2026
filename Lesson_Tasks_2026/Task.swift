//
//  Task.swift
//  Lesson_Tasks_2026
//
//  Created by Stanley Sim on 13/1/26.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    var name: String
    var category: String
    var dueDate: Date
    var isCompleted: Bool
    
    static func newDefaultTask(number: Int) -> Task {
        Task(name: "New Task \(number)",
             category: "Personal",
             dueDate: Calendar.current.date(byAdding: .day, value: 1, to: Date()) ?? .now,
             isCompleted: false)
    }
}
