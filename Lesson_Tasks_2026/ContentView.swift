//
//  ContentView.swift
//  Lesson_Tasks_2026
//
//  Created by Stanley Sim on 19/1/26.
//

import SwiftUI

struct ContentView: View {
    @State private var tasks: [Task] = [
        Task(title:"Finish Maths Homework", category: "School"),
        Task(title:"Pack PE Attire", category: "School"),
        Task(title:"Practise Piano", category: "Personal"),
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(tasks) { task in
                    VStack(alignment: .leading) {
                        Text(task.title)
                            .font(.headline)
                        Text(task.category)
                            .font(.caption)
                            .foregroundStyle(Color.secondary)
                    }
                    
                }
            }.navigationTitle("Tasks")
        }
    }
}

#Preview {
    ContentView()
}
