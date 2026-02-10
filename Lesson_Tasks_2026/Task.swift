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
}
