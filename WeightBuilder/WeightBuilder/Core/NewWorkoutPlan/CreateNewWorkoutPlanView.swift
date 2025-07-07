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
            VStack(alignment: .leading) {
                planName
                enterNewPlanName
                addedExercises
                addNewExercise
                Spacer().frame(minHeight: 40)
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
                    .font(.callout)
            }.padding()
        }
        .buttonStyle(.borderedProminent)
        .tint(Color(.secondaryButton))
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
    
    private var enterNewPlanName: some View {
        TextField("edit plan name", text: $name)
            .textFieldStyle(.roundedBorder)
            .textInputAutocapitalization(.never)
    }
    
    private var planName: some View {
        Text(name.isEmpty ? "New Plan" : name)
            .font(.largeTitle).fontWeight(.bold)
    }
}

#Preview {
    CreateNewWorkoutPlanView()
}
