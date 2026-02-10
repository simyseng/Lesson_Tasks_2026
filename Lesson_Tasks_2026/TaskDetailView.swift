//
//  TaskDetailView.swift
//  Lesson_Tasks_2026
//
//  Created by Stanley Sim on 27/1/26.
//

import SwiftUI

struct TaskDetailView: View {
    @Binding var task: Task
    let categories = ["School", "CCA", "Personal"]
    
    var body: some View {
        Form {
            Section("Task Info") {
                TextField("Title", text:$task.name)
                Picker("Category", selection: $task.category) {
                    ForEach(categories, id: \.self) {c in
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
    TaskDetailView(task: .constant(Task(name: "Finish Maths Homework", category: "School", dueDate: Date(), isCompleted: true)))
}
