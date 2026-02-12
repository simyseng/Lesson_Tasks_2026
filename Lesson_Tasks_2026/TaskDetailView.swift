//
//  TaskDetailView.swift
//  Lesson_Tasks_2026
//
//  Created by Stanley Sim on 23/1/26.
//

import SwiftUI

struct TaskDetailView: View {
    @Binding var task: Task
    let categories = ["School", "CCA", "Personal"]
    
    var body: some View {
        Form {
            Section("Task Information") {
                TextField("Title", text: $task.title)
                Picker("Category", selection: $task.category) {
                    ForEach (categories, id: \.self) {c in
                        Text(c).tag(c)
                    }
                }
                DatePicker("Due Date", selection: $task.dueDate, displayedComponents: .date)
            }
            Section("Status") {
                Toggle("Completed", isOn: $task.isCompleted)
            }
        }
    }
}

#Preview {
    TaskDetailView(task: .constant(Task(title: "Maths Homework", category: "School", dueDate: Calendar.current.date(byAdding: .day, value: 1, to: .now) ?? .now, isCompleted: false)))
}

