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
            Text(task.dueDate.formatted(date:.abbreviated, time:.omitted))
            Text(task.isCompleted ? "✅" : "⭕️")
        }
    }
}
/*
 struct TaskDetailView_Previews: PreviewProvider {
 static var previews: some View {
 TaskDetailView(task: Task(title: "Maths HW", category: "School", dueDate: Date(), isCompleted: false))
 }
 }
 */
