//
//  ContentView.swift
//  Memorize
//
//  Created by Maria Clara Dias on 14/10/25.
//

import SwiftUI

struct ContentView: View {
    var viewModel : EmojiMemoryGameViewModel
    
    var body: some View {
        HStack(){
            ForEach(viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    viewModel.choose(card: card)
                }
            }
        }
        .padding()
        .foregroundColor(.orange)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack{
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0)
                    .fill(Color(.white))
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke()
                Text(card.content)
                    .font(.system(size: 30))
            } else {
                RoundedRectangle(cornerRadius: 10.0)
                    .fill(Color(.orange))
            }
        }
    }
}

#Preview {
    ContentView(viewModel: EmojiMemoryGameViewModel())
}
