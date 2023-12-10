//
//  iMemorize.swift
//  HayvenRose
//
//  Created by J. DeWeese on 12/10/23.
//

import Foundation


struct iMemorize <CardContent> {
    private (set) var cards: Array<Card>
 
    init(numberOfPairsOfCards: Int)  {
        cards = [ ]
        for _ in 0..<numberOfPairsOfCards {
            cards.append(Card(content: <#T##CardContent#>))
            cards.append(Card(content: <#T##CardContent#>))
        }
    }
    
    func choose(card: Card) {
        
    }
    struct Card {
        
        var isFaceUp = false
        var isMatched = false
        let content: CardContent
        
    }
}
