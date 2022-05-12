//
//  ColorCircleView.swift
//  TrafficLightsApp
//
//  Created by Валерия Смецкая on 12.05.2022.
//

import SwiftUI

struct ColorCircleView: View {
    
    @ScaledMetric var size: CGFloat = 0.5
    
    let color: Color
    let opacity: Double
        
    var body: some View {
        Circle()
            .foregroundColor(color.opacity(opacity))
            .frame(width: 200 * size, height: 200 * size)
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
            .padding(5)
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .red, opacity: 0.5)
    }
}
