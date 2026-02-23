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
            List {
                ForEach($tasks) { $task in
                    NavigationLink (destination: TaskDetailView(task: $task)){
                        TaskRow(task: task)
                        
                    }
                }
                .onDelete(perform: deleteTask)
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
    
    func addTask() {
        let newTask = Task.newDefaultTask(number: tasks.count + 1)
        
        tasks.append(newTask)
    }
    
    func deleteTask(indexSet: IndexSet) {
        tasks.remove(atOffsets: indexSet)
    }
}
#Preview {
    ContentView()
}


