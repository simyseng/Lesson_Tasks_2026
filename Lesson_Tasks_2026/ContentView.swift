//
//  ContentView.swift
//  Lesson_Tasks_2026
//
//  Modified by Stanley Sim on 12/1/26.
// Not started as students were recording Lesson 4.
//

import SwiftUI

struct ContentView: View {
    
    @State var tasks: [Task] = [
        Task(title: "Maths Homework", category: "School", dueDate: Calendar.current.date(byAdding: .day, value: 1, to: .now) ?? .now, isCompleted: false),
        Task(title: "Science Homework", category: "School", dueDate: Calendar.current.date(byAdding: .day, value: 2, to: .now) ?? .now, isCompleted: false),
        Task(title: "Practise running", category: "Exercise", dueDate: Calendar.current.date(byAdding: .day, value: 3, to: .now) ?? .now, isCompleted: true)
    ]
    
    var body: some View {
        NavigationStack {
            List($tasks) { $task in
                NavigationLink (destination: TaskDetailView(task: $task)){
                    HStack {
                        Text(task.isCompleted ? "✅" : "⭕️")
                        VStack(alignment: .leading) {
                            Text(task.title)
                                .font(.headline)
                            Text("\(task.category) • Due \(task.dueDate.formatted(date:.abbreviated, time:.omitted))")
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


