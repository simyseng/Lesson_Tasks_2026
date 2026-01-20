//
//  TaskDetailView.swift
//  Lesson_Tasks_2026
//
//  Created by Stanley Sim on 20/1/26.
//

import SwiftUI

struct TaskDetailView: View {
    let task: Task
    
    var body: some View {
        VStack {
            Text(task.title)
                .font(.largeTitle)
            Text(task.category)
                .font(.title)
            Image(systemName: task.imageName)
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundStyle(.blue)
        }
    }
}

 #Preview {
     TaskDetailView(task: Task(title: "Maths HW", category: "School", imageName: "book.fill"))
 }
 
