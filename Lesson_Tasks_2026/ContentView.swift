//
//  ContentView.swift
//  Lesson_Tasks_2026
//
//  Created by Stanley Sim on 8/1/26.
//

import SwiftUI

struct ContentView: View {
    @State private var tasks: [Task] = [
        Task(name: "Finish Maths Homework", category: "School"),
        Task(name: "Pack PE attire", category: "School"),
        Task(name: "Practise piano", category: "CCA")
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(tasks) { task in
                    NavigationLink (destination: TaskDetailView(task: task)) {
                        VStack(alignment: .leading) {
                            Text(task.name)
                                .font(.headline)
                            Text(task.category)
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }
                    }
                }
            }.navigationTitle("Tasks")
        }
    }
}

#Preview {
    ContentView()
}
