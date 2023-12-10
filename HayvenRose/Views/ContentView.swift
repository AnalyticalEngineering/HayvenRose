//
//  ContentView.swift
//  HayvenRose
//
//  Created by J. DeWeese on 12/5/23.
//

import SwiftUI

struct ContentView: View {
    //MARK:  PROPERTIES
    let emojis: [String] = ["🐶", "🐼", "🦊", "🐨", "🐸", "🌹","🐶", "🐼", "🦊", "🐨", "🐸", "🌹"]
    @ State var cardCount: Int = 12
    var viewModel: EmojiMemorizeGame
    
    private let adaptive =
    [
        GridItem(.adaptive(minimum: 55))
    ]
    var body: some View {
        NavigationStack {
            ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom)){
                ScrollView(.vertical, showsIndicators: false)  {
                    VStack{
                        // LAZY CARD LIST
                        LazyVGrid(columns: adaptive) {
                            
                            ForEach(0..<cardCount, id: \.self)  { index in
                                // CARD VIEW
                                CardView(content:  emojis[index])
                                    
                            }
                            .foregroundStyle(.orange)
                        }
                    }
                }
                //MARK:  TOOL BAR
                        .toolbar {
                            //add card button
                            ToolbarItem(id: "Add", placement: .topBarLeading, content: {
                                addCardFunc
                            })
                       // Logo
                            ToolbarItem(id: "Logo", placement: .principal, content: {
                               LogoView()
                            })
                            //remove card button
                            ToolbarItem(id: "Remove", placement: .topBarTrailing, content: {
                                cardRemover
                            })
                        }
                        .foregroundStyle(.blue)
                        .font(.title)
                        .fontWeight(.bold)
                    }
                }
                .padding(.horizontal)
                .padding(.top)
            }
//MARK:  FUNCTIONS
    
//Card Count Function
    func cardCountAdjuster(by offset: Int, symbol: String ) -> some View {
        Button(action: {
                cardCount += offset
                HapticManager.notification(type: .success)
        }, label: {
            Image(systemName: symbol)
        })
        .disabled(cardCount + offset < 1  ||  cardCount + offset > emojis.count)
    }
    
//  Add Card Function
    var addCardFunc:  some View {
        cardCountAdjuster(by: +1, symbol: "rectangle.stack.badge.plus.fill")
    }
        
// Card Remover Function
        var cardRemover:  some View {
          cardCountAdjuster(by: -1, symbol: "rectangle.stack.badge.minus.fill")
        }
    
}
 #Preview {
     ContentView( )
        }
    

