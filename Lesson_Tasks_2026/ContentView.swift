//
//  ContentView.swift
//  Lesson_Tasks_2026
//
//  Created by Stanley Sim on 19/1/26.
//

import SwiftUI

struct ContentView: View {
    @State private var tasks: [Task] = [
        Task(title:"Finish Maths Homework", category: "School", dueDate: Date(), isCompleted: true),
        Task(title:"Pack PE Attire", category: "School", dueDate: Date(), isCompleted: false),
        Task(title:"Practise Piano", category: "Personal", dueDate: Date(), isCompleted: false)
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach($tasks) { $task in
                    NavigationLink(destination: TaskDetailView(task: $task)) {
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
