//
//  Game.swift
//  Apple Pie
//
//  Created by Student on 1/16/18.
//  Copyright © 2018 Student. All rights reserved.
//

import Foundation
struct Game {
    
    var word: String
    var incorrectMovesRemaining: Int
    
    var guessedLetters: [Character]
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        if !word.characters.contains(letter) {
            incorrectMovesRemaining -= 1
        }
        print(guessedLetters)
    }
    var formattedWord: String {
        var guessedWord = ""
        for letter in word.characters {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
            }
            else {
                guessedWord += "_"
            }
        }
        return(guessedWord)
    }
}
