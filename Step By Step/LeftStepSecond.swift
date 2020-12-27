//
//  LeftStepSecond.swift
//  Step By Step
//
//  Created by Brubrusha on 12/27/20.
//

import SwiftUI

struct LeftStepSecond: View {
    var showLeftStepSecond: Bool
    
    var body: some View {
        StepShape(width: 50, height: 50)
            .frame(width: 100, alignment: .leading)
            .opacity(showLeftStepSecond ? 1 : 0)
            .animation(.easeIn(duration: 0.5))
    }
}

struct LeftStepSecond_Previews: PreviewProvider {
    static var previews: some View {
        LeftStepSecond(showLeftStepSecond: true)
    }
}
