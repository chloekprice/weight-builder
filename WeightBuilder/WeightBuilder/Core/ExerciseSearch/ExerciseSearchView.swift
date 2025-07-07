//
//  ExerciseSearchView.swift
//  WeightBuilder
//
//  Created by Chloe Brown on 7/6/25.
//

import SwiftUI


struct ExerciseSearchView: View {
    @State private var searchText = ""
        @State private var selectedItems = Set<Exercise>()
        @State private var isEditing = false
        
        let allItems: [Exercise] = [
            Exercise(name: "Chest Press", id: "1234", bodyPart: "chest", target: "chest", secondaryMuscles: ["biceps", "triceps"], description: "Push up", gifURL: nil, difficulty: Difficulty.beginner.rawValue, category: "push", instructions: ["do this"])
        ]
        
        var filteredItems: [Exercise] {
            if searchText.isEmpty {
                return allItems
            } else {
                return allItems.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
            }
        }

    var body: some View {
            NavigationView {
                List(filteredItems, selection: $selectedItems) { item in
                    Text(item.name)
                }
                .searchable(text: $searchText, prompt: "search exercises")
            }
        }
}

#Preview {
    ExerciseSearchView()
}
