//
//  ContentView.swift
//  Lesson_Tasks_2026
//
//  Created by Stanley Sim on 8/1/26.
//

import SwiftUI

struct ContentView: View {
    @State private var tasks: [Task] = [
        Task(name: "Finish Maths Homework", category: "School", dueDate: Calendar.current.date(byAdding: .day, value: 1, to: .now) ?? .now, isCompleted: false),
        Task(name: "Pack PE attire", category: "School", dueDate: Calendar.current.date(byAdding: .day, value: 2, to: .now) ?? .now, isCompleted: false),
        Task(name: "Practise piano", category: "CCA", dueDate: Calendar.current.date(byAdding: .day, value: 3, to: .now) ?? .now, isCompleted: true)
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach($tasks) { $task in
                    NavigationLink (destination: TaskDetailView(task: $task)) {
                        TaskRow(task: $task)
                    }
                }
            }.navigationTitle("Tasks")
        }
    }
}

#Preview {
    ContentView()
}
