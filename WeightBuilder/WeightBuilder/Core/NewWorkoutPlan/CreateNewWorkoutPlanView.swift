//
//  CreateNewWorkoutPlanView.swift
//  WeightBuilder
//
//  Created by Chloe Brown on 7/5/25.
//

import SwiftUI

struct CreateNewWorkoutPlanView: View {
    @State var name: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                newPlanName
                addedExercises
                addNewExercise
                actionButtons
            }.padding(.horizontal)
        }
    }
    
    private var addNewExercise: some View {
        Button {
            
        } label: {
            HStack() {
                Image(systemName: "plus")
                    .font(Font.system(size: 24))
                Spacer()
                Text("add another exercise")
                    .font(Font.system(size: 24))
            }.padding()
        }.buttonStyle(.borderedProminent)
    }
    
    private var addedExercises: some View {
        Text("Added Exercises")
    }
    
    private var actionButtons: some View {
        HStack {
            cancelButton
            Spacer()
            createButton
        }.padding(.horizontal, 60)
    }
    
    private var cancelButton: some View {
        Button("Cancel") {}
            .buttonStyle(.borderless)
    }
    
    private var createButton: some View {
        Button("Create") {}
            .buttonStyle(.borderedProminent)
    }
    
    private var newPlanName: some View {
        TextField("name", text: $name)
            .textFieldStyle(.roundedBorder)
    }
}

#Preview {
    CreateNewWorkoutPlanView()
}
