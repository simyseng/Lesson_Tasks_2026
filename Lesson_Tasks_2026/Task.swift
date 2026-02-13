//
//  Task.swift
//  Lesson_Tasks_2026
//
//  Created by Stanley Sim on 16/1/26.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    var title: String
    var category: String
    var dueDate: Date
    var isCompleted: Bool
}
