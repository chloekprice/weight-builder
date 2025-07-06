//
//  WorkoutPlansView.swift
//  WeightBuilder
//
//  Created by Chloe Brown on 7/3/25.
//

import SwiftUI

struct WorkoutPlansView: View {
    var body: some View {
        ZStack {
            ScrollView { Text("My Workout Plans") }
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.system(size: 60))
                    }
                }.padding(24)
            }
        }
    }
}

#Preview {
    WorkoutPlansView()
}
