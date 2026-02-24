//
//  TaskRow.swift
//  Lesson_Tasks_2026
//
//  Created by Stanley Sim on 24/2/26.
//

import SwiftUI

struct TaskRow: View {
    @Binding var task: Task
    
    var body: some View {
        HStack {
            Text(task.isCompleted ? "✅" : "❌")
                .onTapGesture {
                    task.isCompleted.toggle()
                }
            VStack(alignment: .leading) {
                Text(task.title)
                    .font(.headline)
                Text("\(task.category) • \(task.dueDate.formatted(date: .abbreviated, time: .omitted))")
                    .font(.caption)
                    .foregroundStyle(Color.secondary)
            }
        }
    }
}

#Preview {
    TaskRow(task: .constant(Task(title:"Finish Maths Homework", category: "School", dueDate: Date(), isCompleted: true)))
}
