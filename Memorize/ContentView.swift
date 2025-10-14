//
//  ContentView.swift
//  Memorize
//
//  Created by Maria Clara Dias on 14/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        HStack(){
            ForEach(0..<4) { index in
                CardView()
            }
        }
        .padding()
        .foregroundColor(.orange)
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack{
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0)
                    .fill(Color(.white))
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke()
                Text("👻")
                    .font(.system(size: 80))
            } else {
                RoundedRectangle(cornerRadius: 10.0)
                    .fill(Color(.orange))
            }
        }
    }
}

#Preview {
    ContentView()
}
