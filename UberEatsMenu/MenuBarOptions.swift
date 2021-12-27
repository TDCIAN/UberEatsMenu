//
//  MenuBarOptions.swift
//  UberEatsMenu
//
//  Created by JeongminKim on 2021/12/27.
//

import Foundation

enum MenuBarOptions: Int, CaseIterable {
    case japanese
    case american
    case italian
    case promotions
    case fancy
    
    var title: String {
        switch self {
        case .japanese: return "Japanese"
        case .american: return "American"
        case .italian: return "Italian"
        case .promotions: return "Promotions"
        case .fancy: return "Fancy"
        }
    }
}
