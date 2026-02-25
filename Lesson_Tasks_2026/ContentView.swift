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
    
    @State var tasks: [Task] = [
        Task(title: "Maths Homework", category: "School", dueDate: Date(), isCompleted: false),
        Task(title: "Lunch Shopping", category: "Personal", dueDate: Date(), isCompleted: false),
        Task(title: "Science Project", category: "School", dueDate: Date(), isCompleted: true)
    ]
    
    var body: some View {
        NavigationStack {
            List($tasks) { $task in
                NavigationLink (destination: TaskDetailView(task: $task)) {
                    TaskRow(task: $task)
                    
                }
                
            }
            .navigationTitle("Tasks")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        addTask()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
    private func addTask() {
        let newTask = Task.newDefaultTask(tasks.count + 1)
        
        tasks.append(newTask)
    }
}

#Preview {
    ContentView()
}
