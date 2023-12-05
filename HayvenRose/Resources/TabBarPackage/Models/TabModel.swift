//
//  TabModel.swift
//  HayvenRose
//
//  Created by J. DeWeese on 12/5/23.
//

import Foundation


/// App Tabs
enum Tab: String, CaseIterable {
    case wildlife = "Wildlife"
    case flags = "Flags"
   case vehicles = "Vehicles"
    
    var systemImage: String {
        switch self {
        case .wildlife:
            return "lizard.fill"
        case .flags:
            return "flag.fill"
        case .vehicles:
            return "car"
        }
    }
    
    var index: Int {
        return Tab.allCases.firstIndex(of: self) ?? 0
    }
}
