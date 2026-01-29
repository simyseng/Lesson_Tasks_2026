//
//  ContentView.swift
//  Lesson_Tasks_2026
//
//  Created by Stanley Sim on 8/1/26.
//

import SwiftUI

struct ContentView: View {
    @State private var tasks: [Task] = [
        Task(title:"Maths Homework", category:"School"),
        Task(title:"Science Homework", category:"School"),
        Task(title:"Buy newspaper", category:"Home")
    ]
    var body: some View {
        NavigationStack {
            List(tasks) { task in
                NavigationLink {
                    TaskDetailView(task: task)
                } label: {
                    VStack(alignment: .leading) {
                        Text(task.title)
                            .font(.headline)
                        Text(task.category)
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }
                }
                
            }.navigationTitle("Tasks")
        }
    }
}

#Preview {
    ContentView()
}
