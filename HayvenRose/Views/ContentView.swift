//
//  ContentView.swift
//  HayvenRose
//
//  Created by J. DeWeese on 12/5/23.
//

import SwiftUI

struct ContentView: View {
    //MARK:  PROPERTIES
    let emojis: [String] = ["🐶", "🐼", "🦊", "🐨", "🐸", "🌹"]
    var cardCount: Int = 4
    
    var body: some View {
        VStack{
            LogoView()
            
            
            HStack{
                ForEach(emojis.indices, id: \.self)  { index in
                    
                    CardView(content:  emojis[index])
                    
                    
                }
            }
            .foregroundStyle(.orange)
            .padding()
        }
    }
}
        #Preview {
            ContentView()
        }
        
    


#Preview {
WildLifeScreen()
}


struct CardView: View {
    let content: String
   
   
    @State var isFaceUp = false
    
    var body: some View {
       

        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                Text("🌹").font(.largeTitle)
            } else {
                base.fill( )
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}

