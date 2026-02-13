//
//  ContentView.swift
//  Lesson_Tasks_2026
//
//  Created by Stanley Sim on 8/1/26.
//

import SwiftUI

struct ContentView: View {
    @State private var tasks: [Task] = [
        Task(title:"Maths Homework", category:"School", dueDate: Calendar.current.date(byAdding: .day, value: 1, to: .now) ?? .now, isCompleted: false),
        Task(title:"Science Homework", category:"School", dueDate: Calendar.current.date(byAdding: .day, value: 2, to: .now) ?? .now, isCompleted: false),
        Task(title:"Buy newspaper", category:"Home", dueDate: Calendar.current.date(byAdding: .day, value: 5, to: .now) ?? .now, isCompleted: true)
    ]
    var body: some View {
        NavigationStack {
            List($tasks) { $task in
                NavigationLink {
                    TaskDetailView(task: $task)
                } label: {
                    TaskRow(task: task)
                }
                
            }.navigationTitle("Tasks")
        }
    }
}

#Preview {
    ContentView()
}
