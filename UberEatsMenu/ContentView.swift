//
//  ContentView.swift
//  UberEatsMenu
//
//  Created by JeongminKim on 2021/12/27.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedOption: MenuBarOptions = .japanese
    var body: some View {
        VStack {
            HStack(spacing: 16) {
                Button(action: {
                    
                }, label: {
                    Image(systemName: "arrow.left")
                        .font(.title2)
                })
                
                Text("Miami - South Beach")
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "magnifyingglass")
                        .font(.title2)
                })
            }
            .padding(.horizontal)
            .foregroundColor(Color.black)
            
            // menu options list
            MenuOptionsList(selectedOption: $selectedOption)
                .padding([.top, .horizontal])
                .overlay(
                    Divider()
                        .padding(.horizontal, -16)
                    , alignment: .bottom
                )
            
            ScrollViewReader { proxy in
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        ForEach(MenuBarOptions.allCases, id: \.self) { option in
                            MenuItemSection(option: option)
                        }
                    }
                    .onChange(of: selectedOption, perform: { _ in
                        withAnimation(.easeInOut) {
                            proxy.scrollTo(selectedOption, anchor: .topTrailing)
                        }
                    })
                    .padding(.horizontal)
                }
            }
        }
    }
}

