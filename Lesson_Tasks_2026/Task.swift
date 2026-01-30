//
//  Task.swift
//  Lesson_Tasks_2026
//
//  Created by Stanley Sim on 13/1/26.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    let name: String
    let category: String
    let dueDate: Date
    let isCompleted: Bool
}
