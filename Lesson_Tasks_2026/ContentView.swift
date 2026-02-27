//
//  ContentView.swift
//  Lesson_Tasks_2026
//
//  Created by Stanley Sim on 8/1/26.
//

import SwiftUI

struct ContentView: View {
    @State private var tasks: [Task] = []
    var body: some View {
        NavigationStack {
            List {
                ForEach($tasks) { $task in
                    NavigationLink {
                        TaskDetailView(task: $task)
                    } label: {
                        TaskRow(task: $task)
                    }
                }.onDelete(perform: deleteTask)
            }
            .onAppear {
                tasks = TaskStore.load()
            }
            .onChange(of: tasks) { _, newValue in
                tasks = TaskStore.load()
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
