//
//  OffsetKey.swift
//  UberEatsMenu
//
//  Created by JeongminKim on 2021/12/29.
//

import SwiftUI

struct OffsetKey: PreferenceKey {
    static var defaultValue: CGRect = .zero
    
    static func reduce(value: inout CGRect, nextValue: () -> CGRect) {
        value = nextValue()
    }
}
