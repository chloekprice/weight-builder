//
//  Exercise.swift
//  WeightBuilder
//
//  Created by Chloe Brown on 7/5/25.
//

import Foundation

class Exercise: Hashable {
    let bodyParts: [String]
    let category: String
    let description: String
    let difficulty: Difficulty
    let demonstrationVideoURL: URL?
    let id: String
    let instructions: [String]
    let muscles: [String]
    let name: String

    init(name: String, id: String, bodyPart: String, target: String, secondaryMuscles: [String], description: String, gifURL: URL?, difficulty: String, category: String, instructions: [String]) {
        self.bodyParts = [bodyPart]
        self.category = category
        self.description = description
        self.difficulty = Difficulty(rawValue: difficulty) ?? .beginner
        self.demonstrationVideoURL = gifURL
        self.id = id
        self.instructions = instructions
        self.muscles = [target] + secondaryMuscles
        self.name = name
    }

    // Implement the == operator to check equality
    static func == (this: Exercise, other: Exercise) -> Bool {
        return this.name == other.name &&
        this.id == other.id &&
        this.bodyParts == other.bodyParts &&
        this.category == other.category &&
        this.description == other.description &&
        this.difficulty == other.difficulty &&
        this.demonstrationVideoURL == other.demonstrationVideoURL &&
        this.instructions == other.instructions &&
        this.muscles == other.muscles
    }

    // Implement hash(into:) to hash the object
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(id)
        hasher.combine(bodyParts)
        hasher.combine(category)
        hasher.combine(description)
        hasher.combine(difficulty)
        hasher.combine(demonstrationVideoURL)
        hasher.combine(instructions)
        hasher.combine(muscles)
    }
}
