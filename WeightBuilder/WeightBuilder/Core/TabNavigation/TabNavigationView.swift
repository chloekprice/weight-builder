//
//  TabNavigationView.swift
//  WeightBuilder
//
//  Created by Chloe Brown on 7/3/25.
//

import SwiftUI

struct TabNavigationView: View {
    var body: some View {
        NavigationStack {
            TabView {
                Tab("Workout", systemImage: "duffle.bag.fill") {
                    LaunchWorkoutView()
                }
                Tab("Plans", systemImage: "calendar") {
                    WorkoutPlansView()
                }
            }.tabViewStyle(.sidebarAdaptable)
        }
    }
}

#Preview {
    TabNavigationView()
}
