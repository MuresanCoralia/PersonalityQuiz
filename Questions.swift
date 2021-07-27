//
//  Questions.swift
//  Questions
//
//  Created by Wolfpack Digital on 27.07.2021.
//

import Foundation


struct Question
{
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType
{
    case single, multiple, ranged
}


enum AnimalType: Character
{
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"

    var definition: String
    {
        switch self
        {
        case .dog:
            return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends."
        case .cat:
            return "Mischievous, yet mild-tempered, you enjoy doing things on your own terms."
        case .rabbit:
            return "You love everything that’s soft. You are healthy and full of energy."
        case .turtle:
            return "You are wise beyond your years, and you focus on the details. Slow and steady wins the race."
        }
    }
}


struct Answer
{
    var text: String
    var type: AnimalType
}
