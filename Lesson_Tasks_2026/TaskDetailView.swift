//
//  TaskDetailView.swift
//  Lesson_Tasks_2026
//
//  Created by Stanley Sim on 29/1/26.
//

import SwiftUI

struct TaskDetailView: View {
    let task: Task
    
    var body: some View {
        Text(task.title)
        Text(task.category)
    }
}

#Preview {
    TaskDetailView(task: Task(title:"Maths Homework", category:"School"))
}
