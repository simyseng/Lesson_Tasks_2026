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
        Text(task.name)
            .font(.largeTitle)
        Text(task.category)
            .font(.title)
        
        Text(task.dueDate.formatted(date: .abbreviated, time: .omitted))
        Text(task.isCompleted ? "Completed" : "Not Completed")
    }
}

#Preview {
    TaskDetailView(task: Task(name: "Finish Maths Homework", category: "School", dueDate: Date(), isCompleted: false))
}
