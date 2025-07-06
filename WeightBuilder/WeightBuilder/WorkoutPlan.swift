//
//  WorkoutPlan.swift
//  WeightBuilder
//
//  Created by Chloe Brown on 7/5/25.
//

import Foundation

class WorkoutPlan {
    let dateCreated: Date
    let exercises: [Exercise: SetsToReps]
    let id: UUID
    let lastWorkoutDate: Date?
    let name: String
    
    typealias SetsToReps = [Int: Int]
    
    init(name: String,
         id: UUID = UUID(),
         exercises: [Exercise: [Int: Int]],
         dateCreated: Date = Date(),
         lastWorkoutDate: Date? = nil) {
        
        self.dateCreated = dateCreated
        self.exercises = exercises
        self.id = id
        self.lastWorkoutDate = lastWorkoutDate
        self.name = name
    }
}
