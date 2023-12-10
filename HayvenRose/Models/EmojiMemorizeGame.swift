//
//  EmojiMemorizeGame.swift
//  HayvenRose
//
//  Created by J. DeWeese on 12/10/23.
//

import SwiftUI


class EmojiMemorizeGame {
    
    private var model:  iMemorize<String>
    
    var cards: Array<iMemorize<String>.Card> {
        return model.cards
        
        
    }
    func choose(_ card: iMemorize<String>.Card)  {
        model.choose(card: card)
    }
}
