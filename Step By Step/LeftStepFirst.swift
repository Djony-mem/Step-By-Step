//
//  LeftStepFirst.swift
//  Step By Step
//
//  Created by Brubrusha on 12/27/20.
//

import SwiftUI

struct LeftStepFirst: View {
    var showLeftStepFirst: Bool
    
    var body: some View {
        StepShape(width: 50, height: 50)
            .frame(width: 100, alignment: .leading)
            .opacity(showLeftStepFirst ? 1 : 0)
            .animation(.easeIn(duration: 0.5))
    }
}

struct LeftStepFirst_Previews: PreviewProvider {
    static var previews: some View {
        LeftStepFirst(showLeftStepFirst: true)
    }
}
