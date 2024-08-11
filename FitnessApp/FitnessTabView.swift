//
//  FitnessTabView.swift
//  FitnessApp
//
//  Created by Michał Gabrielczyk on 11/08/2024.
//

import SwiftUI

struct FitnessTabView: View {
    @State var selectetTab = "Home"
    
    var body: some View {
        TabView(selection: $selectetTab) {
            HomeView()
                .tag("Home")
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            HomeView()
                .tag("Historic")
                .tabItem {
                    Image(systemName: "chart.line.uptrend.xyaxis")
                    Text("History")
                }
        }
    }
}

#Preview {
    FitnessTabView()
}
