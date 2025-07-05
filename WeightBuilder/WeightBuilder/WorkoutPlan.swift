//
//  WorkoutPlan.swift
//  WeightBuilder
//
//  Created by Chloe Brown on 7/5/25.
//

import Foundation

class WorkoutPlan {
    let name: String
    let id: UUID
    let exercises: [Exercise: [Int: Int]]
    let dateCreated: Date
    let lastWorkoutDate: Date?
    
    init(name: String, id: UUID = UUID(), exercises: [Exercise: [Int: Int]], dateCreated: Date = Date(), lastWorkoutDate: Date? = nil) {
        self.name = name
        self.id = id
        self.exercises = exercises
        self.dateCreated = dateCreated
        self.lastWorkoutDate = lastWorkoutDate
    }
    
}
