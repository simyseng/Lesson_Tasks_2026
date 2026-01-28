//
//  TaskDetailView.swift
//  Lesson_Tasks_2026
//
//  Created by Stanley Sim on 27/1/26.
//

import SwiftUI

struct TaskDetailView: View {
    let task: Task
    
    var body: some View {
        Text(task.title)
            .font(.largeTitle)
        Text(task.category)
            .font(.title)
        Text("\(task.dueDate.formatted(date: .abbreviated, time: .omitted))")
        Text(task.isCompleted ? "✅" : "⭕️")
        Spacer()
    }
}

#Preview {
    TaskDetailView(task: Task(title: "Finish Maths Homework", category: "School", dueDate: Date(), isCompleted: false))
}

