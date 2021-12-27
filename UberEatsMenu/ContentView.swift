//
//  ContentView.swift
//  UberEatsMenu
//
//  Created by JeongminKim on 2021/12/27.
//

import SwiftUI

struct ContentView: View {
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
        }
    }
}

