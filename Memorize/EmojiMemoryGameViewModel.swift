//
//  EmojiMemoryGameViewModel.swift
//  Memorize
//
//  Created by Maria Clara Dias on 14/10/25.
//

import Foundation

class EmojiMemoryGameViewModel: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGameViewModel.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻", "🎃", "🧙🏻‍♀️"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }

    }
        
    // MARK: - Acess to the Model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
