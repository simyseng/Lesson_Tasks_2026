//
//  ContentView.swift
//  Lesson_Tasks_2026
//
//  Modified by Stanley Sim on 12/1/26.
//

import SwiftUI

struct ContentView: View {
    
    let tasks: [Task] = [
        Task(title: "Maths Homework", category: "School"),
        Task(title: "Science Homework", category: "School"),
        Task(title: "Practise running", category: "Exercise")
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(tasks) { task in
                    VStack(alignment: .leading) {
                        Text(task.title)
                            .font(.headline)
                        Text(task.category)
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }
                }
            }
            .navigationTitle("Tasks")
        }
    }
}
#Preview {
    ContentView()
}


