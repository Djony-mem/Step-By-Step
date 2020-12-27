//
//  ContentView.swift
//  Step By Step
//
//  Created by Brubrusha on 12/27/20.
//
enum CurrentID {
    case one, two, three, four, five, six
}

import SwiftUI

struct ContentView: View {
    @State private var showLeftStepFirst = false
    @State private var showRightStepFirst = false
    @State private var showLeftStepSecond = false
    @State private var showRightStepSecond = false
    @State private var showLeftStepThird = false
    @State private var showRightStepThird = false
    @State private var currentID = CurrentID.one
    var body: some View {
        ZStack {
            Color(.systemIndigo)
                .ignoresSafeArea()
            VStack {
                Button(action: {getStepRun()}) {
                    Text("Run")
                        .foregroundColor(.white)
                        .frame(width: 100, height: 60)
                        .background(Color.green)
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.white, lineWidth: 4)
                        )
                }
                StepsAction(showLeftStepFirst: showLeftStepFirst, showRightStepFirst: showRightStepFirst, showLeftStepSecond: showLeftStepSecond, showRightStepSecond: showRightStepSecond, showLeftStepThird: showLeftStepThird, showRightStepThird: showRightStepThird)
            }
        }
    }
    
   func getStepRun() {
        switch currentID {
        case .one:
            showLeftStepFirst.toggle()
            currentID = CurrentID.two
        case .two:
            showRightStepFirst.toggle()
            currentID = CurrentID.three
        case .three:
            showLeftStepSecond.toggle()
            currentID = CurrentID.four
        case .four:
            showRightStepSecond.toggle()
            currentID = CurrentID.five
        case .five:
            showLeftStepThird.toggle()
            currentID = CurrentID.six
        case .six:
            showRightStepThird.toggle()
            currentID = CurrentID.one
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
