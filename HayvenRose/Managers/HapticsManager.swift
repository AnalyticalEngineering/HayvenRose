//
//  HapticsManager.swift
//  HayvenRose
//
//  Created by J. DeWeese on 12/6/23.
//


import Foundation
import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
    
}
