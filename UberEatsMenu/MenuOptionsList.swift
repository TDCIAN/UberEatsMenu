//
//  MenuOptionsList.swift
//  UberEatsMenu
//
//  Created by JeongminKim on 2021/12/27.
//

import SwiftUI

struct MenuOptionsList: View {
    @Binding var selectedOption: MenuBarOptions
    @Namespace var animation
    
    var body: some View {
        ScrollViewReader { proxy in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    ForEach(MenuBarOptions.allCases, id: \.self) { item in
                        VStack {
                            Text(item.title)
                                .foregroundColor(item == selectedOption ? .black : .gray)
                            
                            if selectedOption == item {
                                Capsule()
                                    .fill(.black)
                                    .matchedGeometryEffect(id: "item", in: animation)
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
                            withAnimation(.easeInOut) {
                                self.selectedOption = item
                                proxy.scrollTo(item, anchor: .topTrailing)
                            }
                        }
                    }
                }
            }
        }

    }
}
