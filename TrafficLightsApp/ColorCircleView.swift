//
//  ColorCircleView.swift
//  TrafficLightsApp
//
//  Created by Валерия Смецкая on 12.05.2022.
//

import SwiftUI

struct ColorCircleView: View {
    
    @ScaledMetric var size: CGFloat = 0.9
    
    let color: Color
    let opacity: Double
    var body: some View {
        Circle()
            .foregroundColor(color.opacity(opacity))
//            .frame(width: 150 * size, height: 150 * size)
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
            .padding(5)
            .frame(minWidth: .infinity, idealWidth: <#T##CGFloat?#>, maxWidth: <#T##CGFloat?#>, minHeight: <#T##CGFloat?#>, idealHeight: <#T##CGFloat?#>, maxHeight: <#T##CGFloat?#>, alignment: <#T##Alignment#>)
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .red, opacity: 0.5)
    }
}
