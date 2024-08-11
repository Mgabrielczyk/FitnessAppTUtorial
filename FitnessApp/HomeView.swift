//
//  HomeView.swift
//  FitnessApp
//
//  Created by Michał Gabrielczyk on 11/08/2024.
//

import SwiftUI

struct HomeView: View {
    @State var calories: Int = 123
    @State var active: Int = 8
    @State var stand: Int = 3
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Welcome")
                    .font(.largeTitle)
                    .padding()
                
                HStack {
                    
                    Spacer()
                    
                    VStack {
                        VStack {
                            Text("Calories")
                                .font(.callout)
                                .bold()
                                .foregroundStyle(Color.red)

                            Text("123 kcal")
                        }
                        .padding(.bottom)
                        
                        VStack {
                            Text("Active")
                                .font(.callout)
                                .bold()
                                .foregroundStyle(Color.green)

                            Text("52 mins")
                        }
                        .padding(.bottom)
                        
                        VStack {
                            Text("Stand")
                                .font(.callout)
                                .bold()
                                .foregroundStyle(Color.blue)

                            Text("8 hours")
                        }
                    }
                    Spacer()
                    
                    ZStack {
                        ProgressCircleView(progress: $calories, goal: 600, color: .red)
                            
                        ProgressCircleView(progress: $active, goal: 60, color: .green)
                            .padding(.all, 20)
                        ProgressCircleView(progress: $stand, goal: 12, color: .blue)
                            .padding(.all, 40)
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                }
                .padding()
            }
        }
    }
}

#Preview {
    HomeView()
}
