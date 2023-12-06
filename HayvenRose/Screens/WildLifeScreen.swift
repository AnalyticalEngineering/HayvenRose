//
//  WildLifeView.swift
//  HayvenRose
//
//  Created by J. DeWeese on 12/5/23.
//

import SwiftUI

struct WildLifeScreen: View {
    var body: some View {
        
            ZStack {
                
                VStack{
                    //MARK:  LOGO VIEW
                    LogoView()
                        .padding(.horizontal)
                    HStack {
                        CardView(isFaceUp: true)
                        CardView()
                        CardView()
                        CardView()
                    }
                    .foregroundStyle(.purple)
                    .padding()
                    }
                }
            }
        }
    


#Preview {
    WildLifeScreen()
}
