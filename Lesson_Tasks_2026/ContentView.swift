//
//  ContentView.swift
//  Lesson_Tasks_2026
//
//  Created by Stanley Sim on 7/1/26.
// S2-07
// Modified on 15 Jan 2026
//

import SwiftUI

struct ContentView: View {
    
    let tasks: [Task] = [
        Task(title: "Maths Homework", category: "School"),
        Task(title: "Lunch Shopping", category: "Personal"),
        Task(title: "Science Project", category: "School")
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(tasks) { task in
                    VStack (alignment: .leading) {
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
