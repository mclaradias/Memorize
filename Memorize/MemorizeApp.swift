//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Maria Clara Dias on 14/10/25.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: EmojiMemoryGameViewModel())
        }
    }
}
