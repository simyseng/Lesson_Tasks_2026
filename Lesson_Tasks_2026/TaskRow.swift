//
//  TaskRow.swift
//  Lesson_Tasks_2026
//
//  Created by Stanley Sim on 13/2/26.
//

import SwiftUI

struct TaskRow: View {
    @Binding var task: Task

    var body: some View {
        HStack {
            Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
                .font(.title3)
                .foregroundStyle(task.isCompleted ? .green : .gray)
                .onTapGesture {
                    task.isCompleted.toggle()
                }
            VStack(alignment: .leading) {
                Text(task.title)
                    .font(.headline)
                    .strikethrough(task.isCompleted)
                    .foregroundStyle(task.isCompleted ? .gray : .primary)
                Text("\(task.category) • Due \(task.dueDate.formatted(date: .abbreviated, time: .omitted)) ")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
        }
    }
}

#Preview {
    TaskRow(task: .constant(Task(title:"Maths Homework", category:"School", dueDate: Date(), isCompleted: false)))
}
