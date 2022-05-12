//
//  ButtonView.swift
//  TrafficLightsApp
//
//  Created by Валерия Смецкая on 13.05.2022.
//

import SwiftUI

struct ButtonView: View {
    
    @ScaledMetric var size: CGFloat = 1.2
    
    let buttonTitle: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(buttonTitle)
                .font(.title)
                .foregroundColor(.white)
                .frame(width: 150 * size, height: 50)
                .background(Color.blue)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 3))
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(buttonTitle: "START", action: {})
    }
}
