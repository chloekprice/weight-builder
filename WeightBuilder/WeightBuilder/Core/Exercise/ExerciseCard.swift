//
//  ExerciseCard.swift
//  WeightBuilder
//
//  Created by Chloe Brown on 7/22/25.
//

import SwiftUI

struct ExerciseCard: View {
    var name: String = "Exercise Name"
    var image: String = "dumbbell"
    var numSets: Int = 3
    var numReps: Int = 10
    
    var body: some View {
        HStack() {
            exerciseImage
            exerciseDetail
            Spacer()
        }.padding(.horizontal)
    }
    
    
    var exerciseDescription: some View {
        Text("\(numSets) sets of \(numReps) reps")
    }
    
    var exerciseDetail: some View {
        VStack(alignment: .leading){
            exerciseName
            exerciseDescription
        }
    }
    
    var exerciseImage: some View {
        Image(systemName: image)
            .resizable()
            .frame(width: 72, height: 72)
    }
    
    var exerciseName: some View {
        Text(name)
            .font(.title)
    }
}

#Preview {
    ExerciseCard()
}
