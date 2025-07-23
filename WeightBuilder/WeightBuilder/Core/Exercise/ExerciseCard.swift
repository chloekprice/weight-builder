//
//  ExerciseCard.swift
//  WeightBuilder
//
//  Created by Chloe Brown on 7/22/25.
//

import SwiftUI

struct ExerciseCard: View {
    var body: some View {
        HStack() {
            Image(systemName: "dumbbell")
                .resizable()
                .frame(width: 72, height: 72)
            VStack(alignment: .leading){
                Text("Exercise Name")
                    .font(.title)
                Text("default sets of defeault reps")
            }
            Spacer()
        }.padding(.horizontal)
    }
}

#Preview {
    ExerciseCard()
}
