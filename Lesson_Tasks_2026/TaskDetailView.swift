//
//  TaskDetailView.swift
//  Lesson_Tasks_2026
//
//  Created by Stanley Sim on 23/1/26.
//

import SwiftUI

struct TaskDetailView: View {
    let task: Task
    
    var body: some View {
        VStack {
            Text(task.title)
                .font(.largeTitle)
            Text(task.category)
                .font(.title)
            Spacer()
            Text(task.dueDate.formatted(date: .abbreviated, time: .omitted)).font(.largeTitle)
            Text(task.isCompleted ? "Completed" : "Not Completed").font(.largeTitle)
        }
        
    }
}

#Preview {
    TaskDetailView(task: Task(title: "Maths Homework", category: "School", dueDate: Calendar.current.date(byAdding: .day, value: 1, to: .now) ?? .now, isCompleted: false))
}

