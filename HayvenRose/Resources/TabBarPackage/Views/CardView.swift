//
//  CardView.swift
//  HayvenRose
//
//  Created by J. DeWeese on 12/5/23.
//

import SwiftUI

struct CardView: View {
    //MARK:  PROPERTIES
    var isFaceUp: Bool = false
    
    
    var body: some View {
        ZStack(content: {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12).foregroundStyle(.white)
                RoundedRectangle(cornerRadius: 12).stroke(lineWidth: 2).foregroundStyle(.purple)
                  
                Text("🌹").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 12)
            }
            
            
            
            
        })
    }
}

#Preview {
    CardView()
}
