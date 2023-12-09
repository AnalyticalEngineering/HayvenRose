//
//  CardView.swift
//  HayvenRose
//
//  Created by J. DeWeese on 12/9/23.
//

import SwiftUI

struct CardView: View {
        let content: String
        @State var isFaceUp = true
         
        var body: some View {

            ZStack {
                let base = Circle()
                Group {
                    base.fill(.white)
                    base.strokeBorder(lineWidth: 2)
                    Text(content).font(.largeTitle)
                       
                }
                .opacity(isFaceUp ? 1 : 0)
                base.fill().opacity(isFaceUp ? 0 : 1)
            }
            .onTapGesture {
                HapticManager.notification(type: .success)
                isFaceUp.toggle()
            }
        }
    }



