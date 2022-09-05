//
//  Profile.swift
//  LandMarks
//
//  Created by Daniel Kubong on 9/5/22.
//

import SwiftUI

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "daniel_kubong")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍁"
        case winter = "☃️ "
        
        var id: String { rawValue }
    }
}
