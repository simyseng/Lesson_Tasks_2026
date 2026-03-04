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
                .onDelete(perform: deleteTask)
            }
            .onAppear {
                tasks = TaskStore.load()
            }
            .onChange(of: tasks) { _, newValue in
                TaskStore.save(newValue)
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
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
            }
        }
    }
    
    private func addTask() {
        let newTask = Task.newDefaultTask(number: tasks.count + 1)
        tasks.append(newTask)
    }
    
    private func deleteTask(indexSet: IndexSet) {
        tasks.remove(atOffsets: indexSet)
    }
}

#Preview {
    ContentView()
}
