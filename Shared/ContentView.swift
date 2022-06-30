//
//  ContentView.swift
//  Shared
//
//  Created by Gerardo Garzon on 29/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
        }
        .padding(.horizontal)
    }
}

struct CardView: View {
    var isFaceUp: Bool
    
    var body: some View {
        ZStack{
            let shapeCard = RoundedRectangle(cornerRadius: 25.0)
            if isFaceUp {
                shapeCard.fill().foregroundColor(Color.white)
                shapeCard.stroke(lineWidth: 3.0).foregroundColor(Color.orange)
                Text("🚀").font(.largeTitle)
            } else {
                shapeCard.fill().foregroundColor(Color.orange)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
