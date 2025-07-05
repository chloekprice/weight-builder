//
//  Exercise.swift
//  WeightBuilder
//
//  Created by Chloe Brown on 7/5/25.
//

import Foundation

class Exercise {
    let bodyParts: [String]
    let category: String
    let description: String
    let difficulty: String
    let demonstrationVideoURL: URL?
    let id: String
    let instructions: [String]
    let muscles: [String]
    let name: String

    init(name: String, id: String, bodyPart: String, target: String, secondaryMuscles: [String], description: String, gifURL: URL?, difficulty: String, category: String, instructions: [String]) {
        self.bodyParts = [bodyPart]
        self.category = category
        self.description = description
        self.difficulty = difficulty
        self.demonstrationVideoURL = gifURL
        self.id = id
        self.instructions = instructions
        self.muscles = [target] + secondaryMuscles
        self.name = name
    }

}
