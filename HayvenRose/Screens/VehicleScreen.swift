//
//  VehicleScreen.swift
//  HayvenRose
//
//  Created by J. DeWeese on 12/5/23.
//

import SwiftUI

struct VehicleScreen: View {
    var body: some View {
        ZStack {
            
            VStack{
                //MARK:  LOGO VIEW
                LogoView()
                HStack {
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                }
            }
        }
    }
}

#Preview {
    VehicleScreen()
}
