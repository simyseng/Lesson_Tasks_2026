//
//  ContentView.swift
//  Lesson_Tasks_2026
//
//  Created by Stanley Sim on 7/1/26.
// S2-07
// 8 Jan 2026
//

import SwiftUI

struct ContentView: View {
    
    let tasks: [String] = ["Hello", "World", "Stanley"]
    
    var body: some View {
        List {
            ForEach(tasks, id: \.self) { task in
                Text(task)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
