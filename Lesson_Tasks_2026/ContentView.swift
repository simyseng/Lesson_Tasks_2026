//
//  ContentView.swift
//  Lesson_Tasks_2026
//
//  Created by Stanley Sim on 8/1/26.
//

import SwiftUI

struct ContentView: View {
    @State private var taskTitles: [String] = [
        "Finish Maths Homework",
        "Pack PE Attire",
        "Practise Piano",
        "Read 20 Pages of Book"
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(taskTitles, id: \.self) { title in
                    Text(title)
                }
            }.navigationTitle("Tasks")
        }
    }
}

#Preview {
    ContentView()
}
