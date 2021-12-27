//
//  MenuOptionsList.swift
//  UberEatsMenu
//
//  Created by JeongminKim on 2021/12/27.
//

import SwiftUI

struct MenuOptionsList: View {
    @Binding var selectedOption: MenuBarOptions
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 30) {
                ForEach(MenuBarOptions.allCases, id: \.self) { item in
                    VStack {
                        Text(item.title)
                            .foregroundColor(item == selectedOption ? .black : .gray)
                        
                        if selectedOption == item {
                            Capsule()
                                .fill(.black)
                                .frame(height: 3)
                                .padding(.horizontal, -10)
                        } else {
                            Capsule()
                                .fill(.clear)
                                .frame(height: 3)
                                .padding(.horizontal, -10)
                        }
                    }
                    .onTapGesture {
                        self.selectedOption = item
                    }
                }
            }
        }
    }
}
