//
//  TaskDetailView.swift
//  Lesson_Tasks_2026
//
//  Created by Stanley Sim on 21/1/26.
//

import SwiftUI

struct TaskDetailView: View {
    @Binding var task: Task
    @State private var categories = ["School", "CCA", "Personal"]
    
    var body: some View {
        Form {
            Section("Task Info") {
                TextField("Title", text: $task.title)
                Picker("Categories", selection: $task.category) {
                    ForEach(categories, id: \.self) {c in
                        Text(c).tag(c)
                    }
                }
            }
        }
        
    }
}

#Preview {
    TaskDetailView(task: .constant(Task(title:"Maths HW", category: "School", dueDate: Date(), isCompleted: false)))
}

