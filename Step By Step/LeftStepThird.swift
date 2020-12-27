//
//  LeftStepThird.swift
//  Step By Step
//
//  Created by Brubrusha on 12/27/20.
//

import SwiftUI

struct LeftStepThird: View {
    var showLeftStepThird: Bool
    
    var body: some View {
        StepShape(width: 50, height: 50)
            .frame(width: 100, alignment: .leading)
            .opacity(showLeftStepThird ? 1 : 0)
            .animation(.easeIn(duration: 0.5))
    }
}

struct LeftStepThird_Previews: PreviewProvider {
    static var previews: some View {
        LeftStepThird(showLeftStepThird: true)
    }
}
