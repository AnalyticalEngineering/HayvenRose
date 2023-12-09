//
//  LogoView.swift
//  HayvenRose
//
//  Created by J. DeWeese on 12/5/23.
//

import SwiftUI

struct LogoView: View {
   
    
    var body: some View {
        //MARK:  LOGO VIEW 
        HStack(spacing: 2) {
            // MARK: - Left Text
        
    
            // MARK: - Logo Image
            Image(systemName: "lightbulb.max.fill")
                .resizable()
                .scaledToFit()
                .foregroundColor(.yellow) // Use the defined teal color
                .padding(.horizontal, 1)
            // MARK: - Right Text
            Text("iMemorize")
                           .font(.title2)
                           .fontWeight(.heavy)
                           .foregroundStyle(.primary) // Use the defined textColor
            
        }
        .frame(width: 250)
    
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
