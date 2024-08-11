//
//  ProgressCircleView.swift
//  FitnessApp
//
//  Created by Michał Gabrielczyk on 11/08/2024.
//

import SwiftUI

struct ProgressCircleView: View {
    
    @Binding var progress: Int
    
    var goal: Int
    var color: Color
    private let width: CGFloat = 20
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(color.opacity(0.3), lineWidth: width)
            Circle()
                .trim(from: 0, to: CGFloat(progress) / CGFloat(goal))
                .stroke(color, style: StrokeStyle(lineWidth: width, lineCap: .round))
                .rotationEffect(.degrees(-90))
                .shadow(radius: 5)
        }
    }
}

#Preview {
                    ProgressCircleView(progress: .constant(1), goal: 10, color: .red)
}
