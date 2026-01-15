import SwiftUI

struct ContentView: View {
    @State private var taskTitles: [String] = [
        "Maths Homework",
        "Pack PE Attire",
        "Practise guitar"
    ]
    var body: some View {
        NavigationStack {
            List {
                ForEach(taskTitles, id: \.self) { task in
                    Text(task)
                }
            }
            .navigationTitle("Tasks")
        }
        
    }
}

#Preview {
    ContentView()
}