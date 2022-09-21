//
//  MemorizeApp.swift
//  Memorize
//
//  Created by 최제환 on 2022/09/06.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
