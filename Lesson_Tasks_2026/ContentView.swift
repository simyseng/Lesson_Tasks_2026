//
//  ContentView.swift
//  Lesson_Tasks_2026
//
//  Created by Stanley Sim on 8/1/26.
//

import SwiftUI

struct ContentView: View {
    @State var tasks = ["Task 1", "Task 2", "Task 3", "Task 4"]
    
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(tasks, id: \.self) { task in
                    Text(task)
                }
            }.navigationTitle("Tasks")
        }
    }
}

#Preview {
    ContentView()
}
