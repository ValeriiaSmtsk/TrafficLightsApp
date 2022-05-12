//
//  ContentView.swift
//  TrafficLightsApp
//
//  Created by Валерия Смецкая on 12.05.2022.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var currentLight = CurrentLight.red
    @State private var buttonTitle = "START"
    @State private var redLightCondition = 0.3
    @State private var yellowLightCondition = 0.3
    @State private var greenLightCondition = 0.3
    
    var body: some View {
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            VStack{
                ColorCircleView(
                    color: .red,
                    opacity: redLightCondition
                )
                ColorCircleView(
                    color: .yellow,
                    opacity: yellowLightCondition
                )
                ColorCircleView(
                    color: .green,
                    opacity: greenLightCondition
                )
                Spacer()
                ButtonView(buttonTitle: buttonTitle, action: startButtonPressed)
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    private func startButtonPressed() {
        
         let lightIsOn = 1.0
         let lightIsOff = 0.3
        
        if buttonTitle == "START" {
            buttonTitle = "NEXT"
        }
        switch currentLight {
        case .red:
            redLightCondition = lightIsOn
            yellowLightCondition = lightIsOff
            greenLightCondition = lightIsOff
            currentLight = .yellow
        case .yellow:
            redLightCondition = lightIsOff
            yellowLightCondition = lightIsOn
            greenLightCondition = lightIsOff
            currentLight = .green
        case .green:
            redLightCondition = lightIsOff
            yellowLightCondition = lightIsOff
            greenLightCondition = lightIsOn
            currentLight = .red
        }
        
    }
}
