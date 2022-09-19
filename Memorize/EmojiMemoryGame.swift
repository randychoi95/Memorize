//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 최제환 on 2022/09/15.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    static let emojis = ["🚲","🚂","🚁","🚜","🚕","🏎","🚑","🚓","🚒","✈️","🚀","⛵️","🛸","🛶","🚌","🏍","🛺","🚠","🛵","🚗","🚚","🚇","🛻","🚝"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 3) { pairIndex in
                EmojiMemoryGame.emojis[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
