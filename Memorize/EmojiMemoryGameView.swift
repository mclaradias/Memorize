//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by Maria Clara Dias on 14/10/25.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    @ObservedObject var viewModel: EmojiMemoryGameViewModel

    var body: some View {
        Grid(items: viewModel.cards) { card in
            CardView(card: card).onTapGesture {
                self.viewModel.choose(card: card)
            }
            .padding(5)
        }
        .padding()
        .foregroundColor(Color.orange)
        .background(Color.black)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        GeometryReader { geometry in
            self.body(for: geometry.size)
        }
    }
    
    @ViewBuilder
    private func body(for size: CGSize) -> some View {
        if card.isFaceUp || !card.isMatched {
            ZStack {
                Pie(
                    startAngle: Angle.degrees(0 - 90),
                    endAngle: Angle.degrees(110 - 90),
                    clockwise: true
                ).padding(5).opacity(0.3)
                Text(
                    self.card.content
                ).font(Font.system(size: fontSize(for: size)))
            }
            .cardify(isFaceUp: card.isFaceUp)
        }
    }
    
    private func fontSize(for size: CGSize) -> CGFloat {
        return min(size.width, size.height) * fontScaleFactor
    }
    
    private let fontScaleFactor: CGFloat = 0.7
}

#Preview {
    EmojiMemoryGameView(viewModel: EmojiMemoryGameViewModel())
}
