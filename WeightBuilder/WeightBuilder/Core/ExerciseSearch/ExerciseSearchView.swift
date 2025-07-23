//
//  ExerciseSearchView.swift
//  WeightBuilder
//
//  Created by Chloe Brown on 7/6/25.
//

import SwiftUI


struct ExerciseSearchView: View {
    @State private var searchText = ""
    @Binding var showSearchView: Bool
    @Binding var exercises: [Exercise]
        
        let allItems: [Exercise] = [
            Exercise(name: "Chest Press", id: "1234", bodyPart: "chest", target: "chest", secondaryMuscles: ["biceps", "triceps"], description: "Push up", gifURL: nil, difficulty: Difficulty.beginner.rawValue, category: "push", instructions: ["do this"]),
            Exercise(name: "Squat", id: "3456", bodyPart: "chest", target: "chest", secondaryMuscles: ["triceps"], description: "Push up", gifURL: nil, difficulty: Difficulty.beginner.rawValue, category: "push", instructions: ["do this"]),
            Exercise(name: "Deadlift", id: "87654", bodyPart: "chest", target: "chest", secondaryMuscles: ["quads"], description: "Push up", gifURL: nil, difficulty: Difficulty.beginner.rawValue, category: "push", instructions: ["do this"])
        ]
        
        var filteredItems: [Exercise] {
            if searchText.isEmpty {
                return allItems
            } else {
                return allItems.filter { $0.name.localizedCaseInsensitiveContains(searchText) ||
                    $0.bodyParts.contains(where: { bodyPart in
                        bodyPart.localizedCaseInsensitiveContains(searchText)
                    }) ||
                    $0.muscles.contains(where: { muscle in
                        muscle.localizedCaseInsensitiveContains(searchText)
                    })
                }
            }
        }

    var body: some View {
        NavigationView {
            List(filteredItems) { item in
                Button {
                    exercises.append(item)
                    showSearchView = false
                } label: {
                    ExerciseCard(name: item.name)
                }
            }
            .searchable(text: $searchText, prompt: "search exercises")
        }
    }
}

#Preview {
    ExerciseSearchView(showSearchView: .constant(true), exercises: .constant([]))
}
