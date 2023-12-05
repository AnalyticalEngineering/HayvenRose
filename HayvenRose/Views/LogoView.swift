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
            Spacer()
            Text("iMemorize")
                          .font(.title)
                          .fontWeight(.heavy)
                          .foregroundStyle(.primary) // Use the defined textColor
            
            // MARK: - Logo Image
            Image("logo")
                .resizable()
                .scaledToFit()
                .foregroundColor(.orange) // Use the defined teal color
                .frame(width: 70, height:70, alignment: .center)
            
            // MARK: - Right Text
            Text("BrainPower")
                           .font(.title)
                           .fontWeight(.heavy)
                           .foregroundStyle(.primary) // Use the defined textColor
            Spacer()
        }.padding(.all, 1)
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
