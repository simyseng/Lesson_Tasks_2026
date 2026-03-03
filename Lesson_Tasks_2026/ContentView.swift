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
    
    @State var tasks: [Task] = []
    
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
    
    private func deleteTask(offset: IndexSet) {
        tasks.remove(atOffsets: offset)
    }
}

#Preview {
    ContentView()
}
